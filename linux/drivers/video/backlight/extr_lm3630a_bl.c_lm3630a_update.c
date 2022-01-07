
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lm3630a_chip {int regmap; } ;


 int regmap_update_bits (int ,unsigned int,unsigned int,unsigned int) ;

__attribute__((used)) static int lm3630a_update(struct lm3630a_chip *pchip,
     unsigned int reg, unsigned int mask,
     unsigned int data)
{
 return regmap_update_bits(pchip->regmap, reg, mask, data);
}
