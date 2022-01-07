
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;


 unsigned int ZYNQ_PINCONF_IOTYPE_MASK ;
 unsigned int ZYNQ_PINCONF_IOTYPE_SHIFT ;

__attribute__((used)) static unsigned int zynq_pinconf_iostd_get(u32 reg)
{
 return (reg & ZYNQ_PINCONF_IOTYPE_MASK) >> ZYNQ_PINCONF_IOTYPE_SHIFT;
}
