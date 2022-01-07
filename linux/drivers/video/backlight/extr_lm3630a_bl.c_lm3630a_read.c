
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lm3630a_chip {int regmap; } ;


 int regmap_read (int ,unsigned int,unsigned int*) ;

__attribute__((used)) static int lm3630a_read(struct lm3630a_chip *pchip, unsigned int reg)
{
 int rval;
 unsigned int reg_val;

 rval = regmap_read(pchip->regmap, reg, &reg_val);
 if (rval < 0)
  return rval;
 return reg_val & 0xFF;
}
