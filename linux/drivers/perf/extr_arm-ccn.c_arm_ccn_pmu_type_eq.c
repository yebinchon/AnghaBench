
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
__attribute__((used)) static int arm_ccn_pmu_type_eq(u32 a, u32 b)
{
 if (a == b)
  return 1;

 switch (a) {
 case 130:
 case 129:
 case 128:
 case 133:
 case 132:
 case 131:
  switch (b) {
  case 130:
  case 129:
  case 128:
  case 133:
  case 132:
  case 131:
   return 1;
  }
  break;
 }

 return 0;
}
