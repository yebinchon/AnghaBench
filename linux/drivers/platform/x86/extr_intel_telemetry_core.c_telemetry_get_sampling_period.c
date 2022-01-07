
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_4__ {TYPE_1__* telem_ops; } ;
struct TYPE_3__ {int (* get_sampling_period ) (int *,int *,int *,int *) ;} ;


 int stub1 (int *,int *,int *,int *) ;
 TYPE_2__ telm_core_conf ;

int telemetry_get_sampling_period(u8 *pss_min_period, u8 *pss_max_period,
      u8 *ioss_min_period, u8 *ioss_max_period)
{
 return telm_core_conf.telem_ops->get_sampling_period(pss_min_period,
            pss_max_period,
            ioss_min_period,
            ioss_max_period);
}
