
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct nvme_feat_auto_pst {int * entries; } ;
struct nvme_ctrl {int npss; scalar_t__ ps_max_latency_us; int quirks; int device; TYPE_1__* psd; int apst_enabled; int apsta; } ;
typedef int __le64 ;
struct TYPE_2__ {int flags; int entry_lat; int exit_lat; } ;


 int GFP_KERNEL ;
 int NVME_FEAT_AUTO_PST ;
 int NVME_PS_FLAGS_NON_OP_STATE ;
 int NVME_QUIRK_NO_DEEPEST_PS ;
 int cpu_to_le64 (int) ;
 int dev_dbg (int ,char*,...) ;
 int dev_err (int ,char*,int) ;
 int dev_warn (int ,char*) ;
 int do_div (scalar_t__,int) ;
 int kfree (struct nvme_feat_auto_pst*) ;
 struct nvme_feat_auto_pst* kzalloc (int,int ) ;
 scalar_t__ le32_to_cpu (int ) ;
 int nvme_set_features (struct nvme_ctrl*,int ,unsigned int,struct nvme_feat_auto_pst*,int,int *) ;

__attribute__((used)) static int nvme_configure_apst(struct nvme_ctrl *ctrl)
{
 unsigned apste;
 struct nvme_feat_auto_pst *table;
 u64 max_lat_us = 0;
 int max_ps = -1;
 int ret;





 if (!ctrl->apsta)
  return 0;

 if (ctrl->npss > 31) {
  dev_warn(ctrl->device, "NPSS is invalid; not using APST\n");
  return 0;
 }

 table = kzalloc(sizeof(*table), GFP_KERNEL);
 if (!table)
  return 0;

 if (!ctrl->apst_enabled || ctrl->ps_max_latency_us == 0) {

  apste = 0;
  dev_dbg(ctrl->device, "APST disabled\n");
 } else {
  __le64 target = cpu_to_le64(0);
  int state;







  for (state = (int)ctrl->npss; state >= 0; state--) {
   u64 total_latency_us, exit_latency_us, transition_ms;

   if (target)
    table->entries[state] = target;





   if (state == ctrl->npss &&
       (ctrl->quirks & NVME_QUIRK_NO_DEEPEST_PS))
    continue;





   if (!(ctrl->psd[state].flags &
         NVME_PS_FLAGS_NON_OP_STATE))
    continue;

   exit_latency_us =
    (u64)le32_to_cpu(ctrl->psd[state].exit_lat);
   if (exit_latency_us > ctrl->ps_max_latency_us)
    continue;

   total_latency_us =
    exit_latency_us +
    le32_to_cpu(ctrl->psd[state].entry_lat);





   transition_ms = total_latency_us + 19;
   do_div(transition_ms, 20);
   if (transition_ms > (1 << 24) - 1)
    transition_ms = (1 << 24) - 1;

   target = cpu_to_le64((state << 3) |
          (transition_ms << 8));

   if (max_ps == -1)
    max_ps = state;

   if (total_latency_us > max_lat_us)
    max_lat_us = total_latency_us;
  }

  apste = 1;

  if (max_ps == -1) {
   dev_dbg(ctrl->device, "APST enabled but no non-operational states are available\n");
  } else {
   dev_dbg(ctrl->device, "APST enabled: max PS = %d, max round-trip latency = %lluus, table = %*phN\n",
    max_ps, max_lat_us, (int)sizeof(*table), table);
  }
 }

 ret = nvme_set_features(ctrl, NVME_FEAT_AUTO_PST, apste,
    table, sizeof(*table), ((void*)0));
 if (ret)
  dev_err(ctrl->device, "failed to set APST feature (%d)\n", ret);

 kfree(table);
 return ret;
}
