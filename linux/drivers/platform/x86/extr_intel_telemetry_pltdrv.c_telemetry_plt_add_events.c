
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef void* u8 ;
typedef int u32 ;
struct telemetry_evtconfig {int period; void* num_evts; int * evtmap; } ;
struct TYPE_4__ {int curr_period; } ;
struct TYPE_5__ {int curr_period; } ;
struct TYPE_6__ {TYPE_1__ ioss_config; TYPE_2__ pss_config; } ;


 int TELEM_ADD ;
 int pr_err (char*) ;
 int telemetry_setup_evtconfig (struct telemetry_evtconfig,struct telemetry_evtconfig,int ) ;
 TYPE_3__* telm_conf ;

__attribute__((used)) static int telemetry_plt_add_events(u8 num_pss_evts, u8 num_ioss_evts,
        u32 *pss_evtmap, u32 *ioss_evtmap)
{
 struct telemetry_evtconfig pss_evtconfig, ioss_evtconfig;
 int ret;

 pss_evtconfig.evtmap = pss_evtmap;
 pss_evtconfig.num_evts = num_pss_evts;
 pss_evtconfig.period = telm_conf->pss_config.curr_period;

 ioss_evtconfig.evtmap = ioss_evtmap;
 ioss_evtconfig.num_evts = num_ioss_evts;
 ioss_evtconfig.period = telm_conf->ioss_config.curr_period;

 ret = telemetry_setup_evtconfig(pss_evtconfig, ioss_evtconfig,
     TELEM_ADD);
 if (ret)
  pr_err("TELEMETRY ADD Failed\n");

 return ret;
}
