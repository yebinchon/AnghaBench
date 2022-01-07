
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* telem_ops; } ;
struct TYPE_3__ {int (* reset_events ) () ;} ;


 int stub1 () ;
 TYPE_2__ telm_core_conf ;

int telemetry_reset_events(void)
{
 return telm_core_conf.telem_ops->reset_events();
}
