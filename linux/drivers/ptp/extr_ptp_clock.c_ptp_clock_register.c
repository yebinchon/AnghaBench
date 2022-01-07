
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ptp_clock_info {scalar_t__ n_alarm; int owner; scalar_t__ pps; scalar_t__ do_aux_work; } ;
struct TYPE_4__ {int release; int ops; } ;
struct TYPE_3__ {int lock; } ;
struct ptp_clock {int index; int pincfg_mux; int tsevq_mux; scalar_t__ kworker; int devid; scalar_t__ pps_source; TYPE_2__ clock; scalar_t__ dev; int pin_attr_groups; int aux_work; struct ptp_clock_info* info; int tsev_wq; TYPE_1__ tsevq; } ;
struct pps_source_info {int owner; int mode; int name; } ;
struct device {int dummy; } ;
typedef int pps ;


 int EINVAL ;
 int ENOMEM ;
 struct ptp_clock* ERR_PTR (int) ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (scalar_t__) ;
 int MAJOR (int ) ;
 scalar_t__ MINORMASK ;
 int MKDEV (int,int) ;
 int PPS_MAX_NAME_LEN ;
 scalar_t__ PTP_MAX_ALARMS ;
 int PTP_PPS_DEFAULTS ;
 int PTP_PPS_MODE ;
 int PTR_ERR (scalar_t__) ;
 int delete_ptp_clock ;
 scalar_t__ device_create_with_groups (int ,struct device*,int ,struct ptp_clock*,int ,char*,int) ;
 int device_destroy (int ,int ) ;
 int ida_simple_get (int *,int ,scalar_t__,int ) ;
 int ida_simple_remove (int *,int) ;
 int init_waitqueue_head (int *) ;
 int kfree (struct ptp_clock*) ;
 scalar_t__ kthread_create_worker (int ,char*,int) ;
 int kthread_destroy_worker (scalar_t__) ;
 int kthread_init_delayed_work (int *,int ) ;
 struct ptp_clock* kzalloc (int,int ) ;
 int memset (struct pps_source_info*,int ,int) ;
 int mutex_destroy (int *) ;
 int mutex_init (int *) ;
 int posix_clock_register (TYPE_2__*,int ) ;
 scalar_t__ pps_register_source (struct pps_source_info*,int ) ;
 int pps_unregister_source (scalar_t__) ;
 int pr_err (char*,...) ;
 int ptp_aux_kworker ;
 int ptp_class ;
 int ptp_cleanup_pin_groups (struct ptp_clock*) ;
 int ptp_clock_ops ;
 int ptp_clocks_map ;
 int ptp_devt ;
 int ptp_populate_pin_groups (struct ptp_clock*) ;
 int snprintf (int ,int ,char*,int) ;
 int spin_lock_init (int *) ;

struct ptp_clock *ptp_clock_register(struct ptp_clock_info *info,
         struct device *parent)
{
 struct ptp_clock *ptp;
 int err = 0, index, major = MAJOR(ptp_devt);

 if (info->n_alarm > PTP_MAX_ALARMS)
  return ERR_PTR(-EINVAL);


 err = -ENOMEM;
 ptp = kzalloc(sizeof(struct ptp_clock), GFP_KERNEL);
 if (ptp == ((void*)0))
  goto no_memory;

 index = ida_simple_get(&ptp_clocks_map, 0, MINORMASK + 1, GFP_KERNEL);
 if (index < 0) {
  err = index;
  goto no_slot;
 }

 ptp->clock.ops = ptp_clock_ops;
 ptp->clock.release = delete_ptp_clock;
 ptp->info = info;
 ptp->devid = MKDEV(major, index);
 ptp->index = index;
 spin_lock_init(&ptp->tsevq.lock);
 mutex_init(&ptp->tsevq_mux);
 mutex_init(&ptp->pincfg_mux);
 init_waitqueue_head(&ptp->tsev_wq);

 if (ptp->info->do_aux_work) {
  kthread_init_delayed_work(&ptp->aux_work, ptp_aux_kworker);
  ptp->kworker = kthread_create_worker(0, "ptp%d", ptp->index);
  if (IS_ERR(ptp->kworker)) {
   err = PTR_ERR(ptp->kworker);
   pr_err("failed to create ptp aux_worker %d\n", err);
   goto kworker_err;
  }
 }

 err = ptp_populate_pin_groups(ptp);
 if (err)
  goto no_pin_groups;


 ptp->dev = device_create_with_groups(ptp_class, parent, ptp->devid,
          ptp, ptp->pin_attr_groups,
          "ptp%d", ptp->index);
 if (IS_ERR(ptp->dev)) {
  err = PTR_ERR(ptp->dev);
  goto no_device;
 }


 if (info->pps) {
  struct pps_source_info pps;
  memset(&pps, 0, sizeof(pps));
  snprintf(pps.name, PPS_MAX_NAME_LEN, "ptp%d", index);
  pps.mode = PTP_PPS_MODE;
  pps.owner = info->owner;
  ptp->pps_source = pps_register_source(&pps, PTP_PPS_DEFAULTS);
  if (IS_ERR(ptp->pps_source)) {
   err = PTR_ERR(ptp->pps_source);
   pr_err("failed to register pps source\n");
   goto no_pps;
  }
 }


 err = posix_clock_register(&ptp->clock, ptp->devid);
 if (err) {
  pr_err("failed to create posix clock\n");
  goto no_clock;
 }

 return ptp;

no_clock:
 if (ptp->pps_source)
  pps_unregister_source(ptp->pps_source);
no_pps:
 device_destroy(ptp_class, ptp->devid);
no_device:
 ptp_cleanup_pin_groups(ptp);
no_pin_groups:
 if (ptp->kworker)
  kthread_destroy_worker(ptp->kworker);
kworker_err:
 mutex_destroy(&ptp->tsevq_mux);
 mutex_destroy(&ptp->pincfg_mux);
 ida_simple_remove(&ptp_clocks_map, index);
no_slot:
 kfree(ptp);
no_memory:
 return ERR_PTR(err);
}
