
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
struct dwc2_hsotg {int dummy; } ;


 int GHWCFG2 ;
 unsigned int GHWCFG2_OP_MODE_MASK ;
 unsigned int GHWCFG2_OP_MODE_SHIFT ;
 unsigned int dwc2_readl (struct dwc2_hsotg*,int ) ;

unsigned int dwc2_op_mode(struct dwc2_hsotg *hsotg)
{
 u32 ghwcfg2 = dwc2_readl(hsotg, GHWCFG2);

 return (ghwcfg2 & GHWCFG2_OP_MODE_MASK) >>
  GHWCFG2_OP_MODE_SHIFT;
}
