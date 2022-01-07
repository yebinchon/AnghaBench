
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct palmas {int * regmap; } ;


 unsigned int PALMAS_BASE_TO_REG (int ,unsigned int) ;
 int PALMAS_SMPS_BASE ;
 size_t REGULATOR_SLAVE ;
 int regmap_read (int ,unsigned int,unsigned int*) ;

__attribute__((used)) static int palmas_smps_read(struct palmas *palmas, unsigned int reg,
  unsigned int *dest)
{
 unsigned int addr;

 addr = PALMAS_BASE_TO_REG(PALMAS_SMPS_BASE, reg);

 return regmap_read(palmas->regmap[REGULATOR_SLAVE], addr, dest);
}
