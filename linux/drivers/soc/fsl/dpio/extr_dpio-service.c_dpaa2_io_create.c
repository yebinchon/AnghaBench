
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dpaa2_io_desc {size_t cpu; scalar_t__ receives_notifications; int qman_version; int regs_cinh; int regs_cena; } ;
struct TYPE_2__ {int qman_version; int cinh_bar; int cena_bar; } ;
struct dpaa2_io {struct device* dev; int node; int swp; struct dpaa2_io_desc dpio_desc; int notifications; int lock_notifications; int lock_mgmt_cmd; TYPE_1__ swp_desc; } ;
struct device {int dummy; } ;


 size_t DPAA2_IO_ANY_CPU ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int QBMAN_SWP_INTERRUPT_DQRI ;
 struct dpaa2_io** dpio_by_cpu ;
 int dpio_list ;
 int dpio_list_lock ;
 int kfree (struct dpaa2_io*) ;
 struct dpaa2_io* kmalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 size_t num_possible_cpus () ;
 int qbman_swp_init (TYPE_1__*) ;
 int qbman_swp_interrupt_clear_status (int ,int) ;
 int qbman_swp_interrupt_set_trigger (int ,int ) ;
 int qbman_swp_push_set (int ,int ,int) ;
 int spin_lock (int *) ;
 int spin_lock_init (int *) ;
 int spin_unlock (int *) ;

struct dpaa2_io *dpaa2_io_create(const struct dpaa2_io_desc *desc,
     struct device *dev)
{
 struct dpaa2_io *obj = kmalloc(sizeof(*obj), GFP_KERNEL);

 if (!obj)
  return ((void*)0);


 if (desc->cpu != DPAA2_IO_ANY_CPU && desc->cpu >= num_possible_cpus()) {
  kfree(obj);
  return ((void*)0);
 }

 obj->dpio_desc = *desc;
 obj->swp_desc.cena_bar = obj->dpio_desc.regs_cena;
 obj->swp_desc.cinh_bar = obj->dpio_desc.regs_cinh;
 obj->swp_desc.qman_version = obj->dpio_desc.qman_version;
 obj->swp = qbman_swp_init(&obj->swp_desc);

 if (!obj->swp) {
  kfree(obj);
  return ((void*)0);
 }

 INIT_LIST_HEAD(&obj->node);
 spin_lock_init(&obj->lock_mgmt_cmd);
 spin_lock_init(&obj->lock_notifications);
 INIT_LIST_HEAD(&obj->notifications);


 qbman_swp_interrupt_set_trigger(obj->swp,
     QBMAN_SWP_INTERRUPT_DQRI);
 qbman_swp_interrupt_clear_status(obj->swp, 0xffffffff);
 if (obj->dpio_desc.receives_notifications)
  qbman_swp_push_set(obj->swp, 0, 1);

 spin_lock(&dpio_list_lock);
 list_add_tail(&obj->node, &dpio_list);
 if (desc->cpu >= 0 && !dpio_by_cpu[desc->cpu])
  dpio_by_cpu[desc->cpu] = obj;
 spin_unlock(&dpio_list_lock);

 obj->dev = dev;

 return obj;
}
