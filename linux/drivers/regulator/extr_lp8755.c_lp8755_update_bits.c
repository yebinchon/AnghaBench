
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lp8755_chip {int regmap; } ;


 int regmap_update_bits (int ,unsigned int,unsigned int,unsigned int) ;

__attribute__((used)) static int lp8755_update_bits(struct lp8755_chip *pchip, unsigned int reg,
         unsigned int mask, unsigned int val)
{
 return regmap_update_bits(pchip->regmap, reg, mask, val);
}
