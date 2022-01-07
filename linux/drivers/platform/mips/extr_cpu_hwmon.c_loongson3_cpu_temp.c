
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int LOONGSON_CHIPTEMP (int) ;







 int PRID_REV_MASK ;
 int read_c0_prid () ;

int loongson3_cpu_temp(int cpu)
{
 u32 reg, prid_rev;

 reg = LOONGSON_CHIPTEMP(cpu);
 prid_rev = read_c0_prid() & PRID_REV_MASK;
 switch (prid_rev) {
 case 134:
  reg = (reg >> 8) & 0xff;
  break;
 case 129:
 case 128:
 case 133:
 case 132:
  reg = ((reg >> 8) & 0xff) - 100;
  break;
 case 131:
 case 130:
  reg = (reg & 0xffff)*731/0x4000 - 273;
  break;
 }
 return (int)reg * 1000;
}
