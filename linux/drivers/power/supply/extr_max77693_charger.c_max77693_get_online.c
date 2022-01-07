
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {int dummy; } ;


 unsigned int CHG_INT_OK_CHGIN_MASK ;
 int MAX77693_CHG_REG_CHG_INT_OK ;
 int regmap_read (struct regmap*,int ,unsigned int*) ;

__attribute__((used)) static int max77693_get_online(struct regmap *regmap, int *val)
{
 unsigned int data;
 int ret;

 ret = regmap_read(regmap, MAX77693_CHG_REG_CHG_INT_OK, &data);
 if (ret < 0)
  return ret;

 *val = (data & CHG_INT_OK_CHGIN_MASK) ? 1 : 0;

 return 0;
}
