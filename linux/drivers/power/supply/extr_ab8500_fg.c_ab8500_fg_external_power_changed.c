
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct power_supply {int dummy; } ;
struct ab8500_fg {int fg_psy; } ;


 int ab8500_fg_get_ext_psy_data ;
 int class_for_each_device (int ,int *,int ,int ) ;
 int power_supply_class ;
 struct ab8500_fg* power_supply_get_drvdata (struct power_supply*) ;

__attribute__((used)) static void ab8500_fg_external_power_changed(struct power_supply *psy)
{
 struct ab8500_fg *di = power_supply_get_drvdata(psy);

 class_for_each_device(power_supply_class, ((void*)0),
  di->fg_psy, ab8500_fg_get_ext_psy_data);
}
