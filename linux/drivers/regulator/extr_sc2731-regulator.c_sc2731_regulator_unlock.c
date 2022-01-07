
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {int dummy; } ;


 int SC2731_PWR_WR_PROT ;
 int SC2731_WR_UNLOCK_VALUE ;
 int regmap_write (struct regmap*,int ,int ) ;

__attribute__((used)) static int sc2731_regulator_unlock(struct regmap *regmap)
{
 return regmap_write(regmap, SC2731_PWR_WR_PROT,
       SC2731_WR_UNLOCK_VALUE);
}
