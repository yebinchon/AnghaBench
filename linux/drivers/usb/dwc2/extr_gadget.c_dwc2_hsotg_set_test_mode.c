
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dwc2_hsotg {int dummy; } ;


 int DCTL ;
 int DCTL_TSTCTL_MASK ;
 int DCTL_TSTCTL_SHIFT ;
 int EINVAL ;





 int dwc2_readl (struct dwc2_hsotg*,int ) ;
 int dwc2_writel (struct dwc2_hsotg*,int,int ) ;

int dwc2_hsotg_set_test_mode(struct dwc2_hsotg *hsotg, int testmode)
{
 int dctl = dwc2_readl(hsotg, DCTL);

 dctl &= ~DCTL_TSTCTL_MASK;
 switch (testmode) {
 case 131:
 case 130:
 case 128:
 case 129:
 case 132:
  dctl |= testmode << DCTL_TSTCTL_SHIFT;
  break;
 default:
  return -EINVAL;
 }
 dwc2_writel(hsotg, dctl, DCTL);
 return 0;
}
