
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;






 int BYT_PULL_STR_MASK ;

__attribute__((used)) static void byt_get_pull_strength(u32 reg, u16 *strength)
{
 switch (reg & BYT_PULL_STR_MASK) {
 case 129:
  *strength = 2000;
  break;
 case 131:
  *strength = 10000;
  break;
 case 130:
  *strength = 20000;
  break;
 case 128:
  *strength = 40000;
  break;
 }
}
