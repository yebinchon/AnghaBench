
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef enum telemetry_unit { ____Placeholder_telemetry_unit } telemetry_unit ;
struct TYPE_2__ {int telem_trace_lock; } ;


 int EINVAL ;
 int IOSS_TELEM_READ_WORD ;
 int IOSS_TELEM_TRACE_CTL_READ ;
 int IPC_PUNIT_BIOS_READ_TELE_TRACE_CTRL ;
 int PMC_IPC_PMC_TELEMTRY ;
 int TELEM_EXTRACT_VERBOSITY (int ,int ) ;


 int intel_pmc_ipc_command (int ,int ,int *,int ,int *,int ) ;
 int intel_punit_ipc_command (int ,int ,int ,int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_err (char*,...) ;
 TYPE_1__* telm_conf ;

__attribute__((used)) static int telemetry_plt_get_trace_verbosity(enum telemetry_unit telem_unit,
          u32 *verbosity)
{
 u32 temp = 0;
 int ret;

 if (verbosity == ((void*)0))
  return -EINVAL;

 mutex_lock(&(telm_conf->telem_trace_lock));
 switch (telem_unit) {
 case 128:
  ret = intel_punit_ipc_command(
    IPC_PUNIT_BIOS_READ_TELE_TRACE_CTRL,
    0, 0, ((void*)0), &temp);
  if (ret) {
   pr_err("PSS TRACE_CTRL Read Failed\n");
   goto out;
  }

  break;

 case 129:
  ret = intel_pmc_ipc_command(PMC_IPC_PMC_TELEMTRY,
    IOSS_TELEM_TRACE_CTL_READ, ((void*)0), 0, &temp,
    IOSS_TELEM_READ_WORD);
  if (ret) {
   pr_err("IOSS TRACE_CTL Read Failed\n");
   goto out;
  }

  break;

 default:
  pr_err("Unknown Telemetry Unit Specified %d\n", telem_unit);
  ret = -EINVAL;
  break;
 }
 TELEM_EXTRACT_VERBOSITY(temp, *verbosity);

out:
 mutex_unlock(&(telm_conf->telem_trace_lock));
 return ret;
}
