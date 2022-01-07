
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct palmas {int * regmap; } ;


 unsigned int PALMAS_BASE_TO_REG (int ,unsigned int) ;
 int PALMAS_LDO_BASE ;
 size_t REGULATOR_SLAVE ;
 int regmap_write (int ,unsigned int,unsigned int) ;

__attribute__((used)) static int palmas_ldo_write(struct palmas *palmas, unsigned int reg,
  unsigned int value)
{
 unsigned int addr;

 addr = PALMAS_BASE_TO_REG(PALMAS_LDO_BASE, reg);

 return regmap_write(palmas->regmap[REGULATOR_SLAVE], addr, value);
}
