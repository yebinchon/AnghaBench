
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ plt_config; } ;


 int EINVAL ;
 TYPE_1__ telm_core_conf ;

int telemetry_pltconfig_valid(void)
{
 if (telm_core_conf.plt_config)
  return 0;

 else
  return -EINVAL;
}
