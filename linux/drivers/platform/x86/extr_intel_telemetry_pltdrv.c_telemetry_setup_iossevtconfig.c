
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct telemetry_evtconfig {int num_evts; int period; int* evtmap; } ;
typedef enum telemetry_action { ____Placeholder_telemetry_action } telemetry_action ;
struct TYPE_5__ {int ssram_evts_used; int curr_period; TYPE_1__* telem_evts; } ;
struct TYPE_6__ {TYPE_2__ ioss_config; } ;
struct TYPE_4__ {int evt_id; } ;


 int IOSS_TELEM_EVENT_CTL_READ ;
 int IOSS_TELEM_EVENT_CTL_WRITE ;
 int IOSS_TELEM_EVT_CTRL_WRITE_SIZE ;
 int IOSS_TELEM_READ_WORD ;
 int PMC_IPC_PMC_TELEMTRY ;
 int TELEM_ADD ;
 int TELEM_CLEAR_EVENTS (int) ;
 int TELEM_CLEAR_SAMPLE_PERIOD (int) ;
 int TELEM_DISABLE (int) ;
 int TELEM_ENABLE_PERIODIC (int) ;
 int TELEM_ENABLE_SRAM_EVT_TRACE (int) ;
 int TELEM_RESET ;
 int TELEM_UPDATE ;
 int intel_pmc_ipc_command (int ,int ,int*,int ,int*,int ) ;
 int pr_err (char*,...) ;
 scalar_t__ telemetry_plt_config_ioss_event (int,int) ;
 TYPE_3__* telm_conf ;

__attribute__((used)) static int telemetry_setup_iossevtconfig(struct telemetry_evtconfig evtconfig,
      enum telemetry_action action)
{
 u8 num_ioss_evts, ioss_period;
 int ret, index, idx;
 u32 *ioss_evtmap;
 u32 telem_ctrl;

 num_ioss_evts = evtconfig.num_evts;
 ioss_period = evtconfig.period;
 ioss_evtmap = evtconfig.evtmap;


 ret = intel_pmc_ipc_command(PMC_IPC_PMC_TELEMTRY,
        IOSS_TELEM_EVENT_CTL_READ, ((void*)0), 0,
        &telem_ctrl, IOSS_TELEM_READ_WORD);
 if (ret) {
  pr_err("IOSS TELEM_CTRL Read Failed\n");
  return ret;
 }


 TELEM_DISABLE(telem_ctrl);

 ret = intel_pmc_ipc_command(PMC_IPC_PMC_TELEMTRY,
        IOSS_TELEM_EVENT_CTL_WRITE,
        (u8 *)&telem_ctrl,
        IOSS_TELEM_EVT_CTRL_WRITE_SIZE,
        ((void*)0), 0);
 if (ret) {
  pr_err("IOSS TELEM_CTRL Event Disable Write Failed\n");
  return ret;
 }



 if (action == TELEM_RESET) {

  TELEM_CLEAR_EVENTS(telem_ctrl);

  ret = intel_pmc_ipc_command(PMC_IPC_PMC_TELEMTRY,
         IOSS_TELEM_EVENT_CTL_WRITE,
         (u8 *)&telem_ctrl,
         IOSS_TELEM_EVT_CTRL_WRITE_SIZE,
         ((void*)0), 0);
  if (ret) {
   pr_err("IOSS TELEM_CTRL Event Disable Write Failed\n");
   return ret;
  }
  telm_conf->ioss_config.ssram_evts_used = 0;


  for (idx = 0; idx < num_ioss_evts; idx++) {
   if (telemetry_plt_config_ioss_event(
       telm_conf->ioss_config.telem_evts[idx].evt_id,
       idx)) {
    pr_err("IOSS TELEM_RESET Fail for data: %x\n",
    telm_conf->ioss_config.telem_evts[idx].evt_id);
    continue;
   }
   telm_conf->ioss_config.ssram_evts_used++;
  }
 }


 if (action == TELEM_UPDATE) {

  TELEM_CLEAR_EVENTS(telem_ctrl);

  ret = intel_pmc_ipc_command(PMC_IPC_PMC_TELEMTRY,
         IOSS_TELEM_EVENT_CTL_WRITE,
         (u8 *)&telem_ctrl,
         IOSS_TELEM_EVT_CTRL_WRITE_SIZE,
         ((void*)0), 0);
  if (ret) {
   pr_err("IOSS TELEM_CTRL Event Disable Write Failed\n");
   return ret;
  }
  telm_conf->ioss_config.ssram_evts_used = 0;


  for (index = 0; index < num_ioss_evts; index++) {
   telm_conf->ioss_config.telem_evts[index].evt_id =
   ioss_evtmap[index];

   if (telemetry_plt_config_ioss_event(
       telm_conf->ioss_config.telem_evts[index].evt_id,
       index)) {
    pr_err("IOSS TELEM_UPDATE Fail for Evt%x\n",
     ioss_evtmap[index]);
    continue;
   }
   telm_conf->ioss_config.ssram_evts_used++;
  }
 }


 if (action == TELEM_ADD) {

  for (index = telm_conf->ioss_config.ssram_evts_used, idx = 0;
       idx < num_ioss_evts; index++, idx++) {
   telm_conf->ioss_config.telem_evts[index].evt_id =
   ioss_evtmap[idx];

   if (telemetry_plt_config_ioss_event(
       telm_conf->ioss_config.telem_evts[index].evt_id,
       index)) {
    pr_err("IOSS TELEM_ADD Fail for Event %x\n",
     ioss_evtmap[idx]);
    continue;
   }
   telm_conf->ioss_config.ssram_evts_used++;
  }
 }


 TELEM_CLEAR_SAMPLE_PERIOD(telem_ctrl);
 TELEM_ENABLE_SRAM_EVT_TRACE(telem_ctrl);
 TELEM_ENABLE_PERIODIC(telem_ctrl);
 telem_ctrl |= ioss_period;

 ret = intel_pmc_ipc_command(PMC_IPC_PMC_TELEMTRY,
        IOSS_TELEM_EVENT_CTL_WRITE,
        (u8 *)&telem_ctrl,
        IOSS_TELEM_EVT_CTRL_WRITE_SIZE, ((void*)0), 0);
 if (ret) {
  pr_err("IOSS TELEM_CTRL Event Enable Write Failed\n");
  return ret;
 }

 telm_conf->ioss_config.curr_period = ioss_period;

 return 0;
}
