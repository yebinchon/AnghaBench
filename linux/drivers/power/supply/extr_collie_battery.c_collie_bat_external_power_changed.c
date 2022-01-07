
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct power_supply {int dummy; } ;


 int bat_work ;
 int schedule_work (int *) ;

__attribute__((used)) static void collie_bat_external_power_changed(struct power_supply *psy)
{
 schedule_work(&bat_work);
}
