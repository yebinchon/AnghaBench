
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct power_supply {int dummy; } ;
struct gpio_charger {int dummy; } ;


 struct gpio_charger* power_supply_get_drvdata (struct power_supply*) ;

__attribute__((used)) static inline struct gpio_charger *psy_to_gpio_charger(struct power_supply *psy)
{
 return power_supply_get_drvdata(psy);
}
