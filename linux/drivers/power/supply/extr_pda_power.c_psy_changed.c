
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int wait_for_charger; } ;


 int cancel_delayed_work (int *) ;
 int msecs_to_jiffies (int ) ;
 TYPE_1__* pdata ;
 int schedule_delayed_work (int *,int ) ;
 int supply_work ;
 int update_charger () ;

__attribute__((used)) static void psy_changed(void)
{
 update_charger();





 cancel_delayed_work(&supply_work);
 schedule_delayed_work(&supply_work,
         msecs_to_jiffies(pdata->wait_for_charger));
}
