
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct watchdog_device {TYPE_1__* gov; } ;
struct TYPE_2__ {char* name; } ;


 int pretimeout_lock ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int sprintf (char*,char*,char*) ;

int watchdog_pretimeout_governor_get(struct watchdog_device *wdd, char *buf)
{
 int count = 0;

 spin_lock_irq(&pretimeout_lock);
 if (wdd->gov)
  count = sprintf(buf, "%s\n", wdd->gov->name);
 spin_unlock_irq(&pretimeout_lock);

 return count;
}
