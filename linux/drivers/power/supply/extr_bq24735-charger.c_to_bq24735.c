
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct power_supply {int dummy; } ;
struct bq24735 {int dummy; } ;


 struct bq24735* power_supply_get_drvdata (struct power_supply*) ;

__attribute__((used)) static inline struct bq24735 *to_bq24735(struct power_supply *psy)
{
 return power_supply_get_drvdata(psy);
}
