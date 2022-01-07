
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_5__ {int max_period; int min_period; } ;
struct TYPE_4__ {int max_period; int min_period; } ;
struct TYPE_6__ {TYPE_2__ ioss_config; TYPE_1__ pss_config; } ;


 TYPE_3__* telm_conf ;

__attribute__((used)) static int telemetry_plt_get_sampling_period(u8 *pss_min_period,
          u8 *pss_max_period,
          u8 *ioss_min_period,
          u8 *ioss_max_period)
{
 *pss_min_period = telm_conf->pss_config.min_period;
 *pss_max_period = telm_conf->pss_config.max_period;
 *ioss_min_period = telm_conf->ioss_config.min_period;
 *ioss_max_period = telm_conf->ioss_config.max_period;

 return 0;
}
