
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {int dummy; } ;


 int CONFIG_SOFT_WATCHDOG_PRETIMEOUT ;
 scalar_t__ IS_ENABLED (int ) ;
 int THIS_MODULE ;
 scalar_t__ hrtimer_cancel (int *) ;
 int module_put (int ) ;
 int softdog_preticktock ;
 int softdog_ticktock ;

__attribute__((used)) static int softdog_stop(struct watchdog_device *w)
{
 if (hrtimer_cancel(&softdog_ticktock))
  module_put(THIS_MODULE);

 if (IS_ENABLED(CONFIG_SOFT_WATCHDOG_PRETIMEOUT))
  hrtimer_cancel(&softdog_preticktock);

 return 0;
}
