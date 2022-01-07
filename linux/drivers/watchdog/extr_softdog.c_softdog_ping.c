
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {scalar_t__ pretimeout; scalar_t__ timeout; } ;


 int CONFIG_SOFT_WATCHDOG_PRETIMEOUT ;
 int HRTIMER_MODE_REL ;
 scalar_t__ IS_ENABLED (int ) ;
 int THIS_MODULE ;
 int __module_get (int ) ;
 int hrtimer_active (int *) ;
 int hrtimer_cancel (int *) ;
 int hrtimer_start (int *,int ,int ) ;
 int ktime_set (scalar_t__,int ) ;
 int softdog_preticktock ;
 int softdog_ticktock ;

__attribute__((used)) static int softdog_ping(struct watchdog_device *w)
{
 if (!hrtimer_active(&softdog_ticktock))
  __module_get(THIS_MODULE);
 hrtimer_start(&softdog_ticktock, ktime_set(w->timeout, 0),
        HRTIMER_MODE_REL);

 if (IS_ENABLED(CONFIG_SOFT_WATCHDOG_PRETIMEOUT)) {
  if (w->pretimeout)
   hrtimer_start(&softdog_preticktock,
          ktime_set(w->timeout - w->pretimeout, 0),
          HRTIMER_MODE_REL);
  else
   hrtimer_cancel(&softdog_preticktock);
 }

 return 0;
}
