
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
__attribute__((used)) static u32 clkfactor_f6_resolve(u32 v)
{

 switch (v) {
 case 133:
  return 2;
 case 132:
  return 3;
 case 131:
  return 4;
 case 130:
  return 5;
 case 129:
  return 6;
 case 128:
  return 7;
 }
 return 0;
}
