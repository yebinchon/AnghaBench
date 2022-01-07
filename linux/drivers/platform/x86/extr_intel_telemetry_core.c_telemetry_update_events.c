
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct telemetry_evtconfig {int dummy; } ;
struct TYPE_4__ {TYPE_1__* telem_ops; } ;
struct TYPE_3__ {int (* update_events ) (struct telemetry_evtconfig,struct telemetry_evtconfig) ;} ;


 int stub1 (struct telemetry_evtconfig,struct telemetry_evtconfig) ;
 TYPE_2__ telm_core_conf ;

int telemetry_update_events(struct telemetry_evtconfig pss_evtconfig,
       struct telemetry_evtconfig ioss_evtconfig)
{
 return telm_core_conf.telem_ops->update_events(pss_evtconfig,
             ioss_evtconfig);
}
