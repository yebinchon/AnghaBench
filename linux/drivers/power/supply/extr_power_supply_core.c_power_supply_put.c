
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct power_supply {int dev; int use_cnt; } ;


 int atomic_dec (int *) ;
 int might_sleep () ;
 int put_device (int *) ;

void power_supply_put(struct power_supply *psy)
{
 might_sleep();

 atomic_dec(&psy->use_cnt);
 put_device(&psy->dev);
}
