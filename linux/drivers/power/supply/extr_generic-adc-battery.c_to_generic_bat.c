
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct power_supply {int dummy; } ;
struct gab {int dummy; } ;


 struct gab* power_supply_get_drvdata (struct power_supply*) ;

__attribute__((used)) static struct gab *to_generic_bat(struct power_supply *psy)
{
 return power_supply_get_drvdata(psy);
}
