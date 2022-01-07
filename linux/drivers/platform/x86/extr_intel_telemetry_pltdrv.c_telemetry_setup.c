
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct telemetry_evtconfig {void* period; void* num_evts; int * evtmap; } ;
struct platform_device {int dev; } ;
struct TYPE_5__ {void* max_period; void* min_period; } ;
struct TYPE_4__ {void* max_period; void* min_period; } ;
struct TYPE_6__ {TYPE_2__ pss_config; TYPE_1__ ioss_config; } ;


 int ENOMEM ;
 int IOSS_TELEM_INFO_READ ;
 int IOSS_TELEM_READ_WORD ;
 int IPC_PUNIT_BIOS_READ_TELE_INFO ;
 int PMC_IPC_PMC_TELEMTRY ;
 int TELEM_INFO_NENABLES_MASK ;
 int TELEM_INFO_SRAMEVTS_MASK ;
 int TELEM_INFO_SRAMEVTS_SHIFT ;
 int TELEM_MAX_EVENTS_SRAM ;
 void* TELEM_MAX_OS_ALLOCATED_EVENTS ;
 void* TELEM_MAX_PERIOD (int) ;
 void* TELEM_MIN_PERIOD (int) ;
 int TELEM_RESET ;
 void* TELEM_SAMPLING_DEFAULT_PERIOD ;
 int dev_err (int *,char*,...) ;
 int intel_pmc_ipc_command (int ,int ,int *,int ,int*,int ) ;
 int intel_punit_ipc_command (int ,int ,int ,int *,int*) ;
 int telemetry_setup_evtconfig (struct telemetry_evtconfig,struct telemetry_evtconfig,int ) ;
 TYPE_3__* telm_conf ;

__attribute__((used)) static int telemetry_setup(struct platform_device *pdev)
{
 struct telemetry_evtconfig pss_evtconfig, ioss_evtconfig;
 u32 read_buf, events, event_regs;
 int ret;

 ret = intel_pmc_ipc_command(PMC_IPC_PMC_TELEMTRY, IOSS_TELEM_INFO_READ,
        ((void*)0), 0, &read_buf, IOSS_TELEM_READ_WORD);
 if (ret) {
  dev_err(&pdev->dev, "IOSS TELEM_INFO Read Failed\n");
  return ret;
 }


 events = (read_buf & TELEM_INFO_SRAMEVTS_MASK) >>
    TELEM_INFO_SRAMEVTS_SHIFT;
 event_regs = read_buf & TELEM_INFO_NENABLES_MASK;
 if ((events < TELEM_MAX_EVENTS_SRAM) ||
     (event_regs < TELEM_MAX_EVENTS_SRAM)) {
  dev_err(&pdev->dev, "IOSS:Insufficient Space for SRAM Trace\n");
  dev_err(&pdev->dev, "SRAM Events %d; Event Regs %d\n",
   events, event_regs);
  return -ENOMEM;
 }

 telm_conf->ioss_config.min_period = TELEM_MIN_PERIOD(read_buf);
 telm_conf->ioss_config.max_period = TELEM_MAX_PERIOD(read_buf);


 ret = intel_punit_ipc_command(IPC_PUNIT_BIOS_READ_TELE_INFO, 0, 0,
          ((void*)0), &read_buf);
 if (ret) {
  dev_err(&pdev->dev, "PSS TELEM_INFO Read Failed\n");
  return ret;
 }


 events = (read_buf & TELEM_INFO_SRAMEVTS_MASK) >>
    TELEM_INFO_SRAMEVTS_SHIFT;
 event_regs = read_buf & TELEM_INFO_SRAMEVTS_MASK;
 if ((events < TELEM_MAX_EVENTS_SRAM) ||
     (event_regs < TELEM_MAX_EVENTS_SRAM)) {
  dev_err(&pdev->dev, "PSS:Insufficient Space for SRAM Trace\n");
  dev_err(&pdev->dev, "SRAM Events %d; Event Regs %d\n",
   events, event_regs);
  return -ENOMEM;
 }

 telm_conf->pss_config.min_period = TELEM_MIN_PERIOD(read_buf);
 telm_conf->pss_config.max_period = TELEM_MAX_PERIOD(read_buf);

 pss_evtconfig.evtmap = ((void*)0);
 pss_evtconfig.num_evts = TELEM_MAX_OS_ALLOCATED_EVENTS;
 pss_evtconfig.period = TELEM_SAMPLING_DEFAULT_PERIOD;

 ioss_evtconfig.evtmap = ((void*)0);
 ioss_evtconfig.num_evts = TELEM_MAX_OS_ALLOCATED_EVENTS;
 ioss_evtconfig.period = TELEM_SAMPLING_DEFAULT_PERIOD;

 ret = telemetry_setup_evtconfig(pss_evtconfig, ioss_evtconfig,
     TELEM_RESET);
 if (ret) {
  dev_err(&pdev->dev, "TELEMETRY Setup Failed\n");
  return ret;
 }
 return 0;
}
