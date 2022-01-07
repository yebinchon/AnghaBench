
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct telemetry_evtconfig {void* period; void* num_evts; int * evtmap; } ;


 void* TELEM_MAX_OS_ALLOCATED_EVENTS ;
 int TELEM_RESET ;
 void* TELEM_SAMPLING_DEFAULT_PERIOD ;
 int pr_err (char*) ;
 int telemetry_setup_evtconfig (struct telemetry_evtconfig,struct telemetry_evtconfig,int ) ;

__attribute__((used)) static int telemetry_plt_reset_events(void)
{
 struct telemetry_evtconfig pss_evtconfig, ioss_evtconfig;
 int ret;

 pss_evtconfig.evtmap = ((void*)0);
 pss_evtconfig.num_evts = TELEM_MAX_OS_ALLOCATED_EVENTS;
 pss_evtconfig.period = TELEM_SAMPLING_DEFAULT_PERIOD;

 ioss_evtconfig.evtmap = ((void*)0);
 ioss_evtconfig.num_evts = TELEM_MAX_OS_ALLOCATED_EVENTS;
 ioss_evtconfig.period = TELEM_SAMPLING_DEFAULT_PERIOD;

 ret = telemetry_setup_evtconfig(pss_evtconfig, ioss_evtconfig,
     TELEM_RESET);
 if (ret)
  pr_err("TELEMETRY Reset Failed\n");

 return ret;
}
