
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hrtimer {int dummy; } ;
typedef enum hrtimer_restart { ____Placeholder_hrtimer_restart } hrtimer_restart ;


 int HRTIMER_NORESTART ;
 int softdog_dev ;
 int watchdog_notify_pretimeout (int *) ;

__attribute__((used)) static enum hrtimer_restart softdog_pretimeout(struct hrtimer *timer)
{
 watchdog_notify_pretimeout(&softdog_dev);

 return HRTIMER_NORESTART;
}
