
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lp8755_chip {int regmap; } ;


 int regmap_write (int ,unsigned int,unsigned int) ;

__attribute__((used)) static int lp8755_write(struct lp8755_chip *pchip, unsigned int reg,
   unsigned int val)
{
 return regmap_write(pchip->regmap, reg, val);
}
