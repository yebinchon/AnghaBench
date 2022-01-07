
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tsi148_driver {scalar_t__ base; } ;


 scalar_t__ TSI148_LCSR_VICR ;
 int TSI148_LCSR_VICR_IRQS ;
 int ioread32be (scalar_t__) ;

__attribute__((used)) static int tsi148_iack_received(struct tsi148_driver *bridge)
{
 u32 tmp;

 tmp = ioread32be(bridge->base + TSI148_LCSR_VICR);

 if (tmp & TSI148_LCSR_VICR_IRQS)
  return 0;
 else
  return 1;
}
