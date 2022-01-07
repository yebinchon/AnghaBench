
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_4__ {TYPE_1__* telem_ops; } ;
struct TYPE_3__ {int (* add_events ) (int ,int ,int *,int *) ;} ;


 int stub1 (int ,int ,int *,int *) ;
 TYPE_2__ telm_core_conf ;

int telemetry_add_events(u8 num_pss_evts, u8 num_ioss_evts,
    u32 *pss_evtmap, u32 *ioss_evtmap)
{
 return telm_core_conf.telem_ops->add_events(num_pss_evts,
          num_ioss_evts, pss_evtmap,
          ioss_evtmap);
}
