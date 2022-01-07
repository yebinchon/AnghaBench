
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
typedef scalar_t__ u32 ;
struct telemetry_evtlog {int dummy; } ;
struct TYPE_2__ {int deep_res; int deep_ctr; int shlw_res; int shlw_ctr; } ;
struct telemetry_debugfs_conf {TYPE_1__ suspend_stats; int s0ix_deep_res_id; int s0ix_shlw_res_id; int s0ix_deep_occ_id; int s0ix_shlw_occ_id; } ;


 int NOTIFY_OK ;
 int PMC_GCR_TELEM_DEEP_S0IX_REG ;
 int PMC_GCR_TELEM_SHLW_S0IX_REG ;
 int TELEM_CHECK_AND_PARSE_CTRS (int ,scalar_t__) ;
 int TELEM_IOSS ;
 int TELEM_MAX_OS_ALLOCATED_EVENTS ;
 struct telemetry_debugfs_conf* debugfs_conf ;
 int intel_pmc_gcr_read64 (int ,scalar_t__*) ;
 int pr_err (char*) ;
 scalar_t__ suspend_deep_ctr_temp ;
 scalar_t__ suspend_deep_res_temp ;
 scalar_t__ suspend_prep_ok ;
 scalar_t__ suspend_shlw_ctr_temp ;
 scalar_t__ suspend_shlw_res_temp ;
 int telemetry_raw_read_eventlog (int ,struct telemetry_evtlog*,int) ;

__attribute__((used)) static int pm_suspend_exit_cb(void)
{
 struct telemetry_evtlog evtlog[TELEM_MAX_OS_ALLOCATED_EVENTS];
 static u32 suspend_shlw_ctr_exit, suspend_deep_ctr_exit;
 static u64 suspend_shlw_res_exit, suspend_deep_res_exit;
 struct telemetry_debugfs_conf *conf = debugfs_conf;
 int ret, index;

 if (!suspend_prep_ok)
  goto out;

 ret = telemetry_raw_read_eventlog(TELEM_IOSS, evtlog,
       TELEM_MAX_OS_ALLOCATED_EVENTS);
 if (ret < 0)
  goto out;

 for (index = 0; index < ret; index++) {
  TELEM_CHECK_AND_PARSE_CTRS(conf->s0ix_shlw_occ_id,
        suspend_shlw_ctr_exit);

  TELEM_CHECK_AND_PARSE_CTRS(conf->s0ix_deep_occ_id,
        suspend_deep_ctr_exit);

  TELEM_CHECK_AND_PARSE_CTRS(conf->s0ix_shlw_res_id,
        suspend_shlw_res_exit);

  TELEM_CHECK_AND_PARSE_CTRS(conf->s0ix_deep_res_id,
        suspend_deep_res_exit);
 }

 if ((suspend_shlw_ctr_exit < suspend_shlw_ctr_temp) ||
     (suspend_deep_ctr_exit < suspend_deep_ctr_temp) ||
     (suspend_shlw_res_exit < suspend_shlw_res_temp) ||
     (suspend_deep_res_exit < suspend_deep_res_temp)) {
  pr_err("Wrong s0ix counters detected\n");
  goto out;
 }







 if (suspend_shlw_ctr_exit == suspend_shlw_ctr_temp &&
     suspend_deep_ctr_exit == suspend_deep_ctr_temp) {
  ret = intel_pmc_gcr_read64(PMC_GCR_TELEM_SHLW_S0IX_REG,
       &suspend_shlw_res_exit);
  if (ret < 0)
   goto out;

  ret = intel_pmc_gcr_read64(PMC_GCR_TELEM_DEEP_S0IX_REG,
       &suspend_deep_res_exit);
  if (ret < 0)
   goto out;

  if (suspend_shlw_res_exit > suspend_shlw_res_temp)
   suspend_shlw_ctr_exit++;

  if (suspend_deep_res_exit > suspend_deep_res_temp)
   suspend_deep_ctr_exit++;
 }

 suspend_shlw_ctr_exit -= suspend_shlw_ctr_temp;
 suspend_deep_ctr_exit -= suspend_deep_ctr_temp;
 suspend_shlw_res_exit -= suspend_shlw_res_temp;
 suspend_deep_res_exit -= suspend_deep_res_temp;

 if (suspend_shlw_ctr_exit != 0) {
  conf->suspend_stats.shlw_ctr +=
  suspend_shlw_ctr_exit;

  conf->suspend_stats.shlw_res +=
  suspend_shlw_res_exit;
 }

 if (suspend_deep_ctr_exit != 0) {
  conf->suspend_stats.deep_ctr +=
  suspend_deep_ctr_exit;

  conf->suspend_stats.deep_res +=
  suspend_deep_res_exit;
 }

out:
 suspend_prep_ok = 0;
 return NOTIFY_OK;
}
