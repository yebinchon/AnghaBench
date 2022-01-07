
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * plt_config; int * telem_ops; } ;


 TYPE_1__ telm_core_conf ;
 int telm_defpltops ;

int telemetry_clear_pltdata(void)
{
 telm_core_conf.telem_ops = &telm_defpltops;
 telm_core_conf.plt_config = ((void*)0);

 return 0;
}
