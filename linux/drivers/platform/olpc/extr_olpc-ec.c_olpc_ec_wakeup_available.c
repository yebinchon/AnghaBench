
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int wakeup_available; } ;


 scalar_t__ WARN_ON (int) ;
 TYPE_1__* ec_driver ;

bool olpc_ec_wakeup_available(void)
{
 if (WARN_ON(!ec_driver))
  return 0;

 return ec_driver->wakeup_available;
}
