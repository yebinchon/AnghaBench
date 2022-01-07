
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;


 int NOTIFY_DONE ;
 int WDT_ENABLE ;
 int wdt_change (int ) ;

__attribute__((used)) static int wdt_restart_handle(struct notifier_block *this, unsigned long mode,
         void *cmd)
{





 wdt_change(WDT_ENABLE);


 while (1)
  ;

 return NOTIFY_DONE;
}
