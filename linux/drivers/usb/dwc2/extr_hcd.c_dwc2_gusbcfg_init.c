
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int otg_cap; } ;
struct TYPE_3__ {int op_mode; } ;
struct dwc2_hsotg {TYPE_2__ params; TYPE_1__ hw_params; } ;


 int DWC2_CAP_PARAM_HNP_SRP_CAPABLE ;
 int DWC2_CAP_PARAM_NO_HNP_SRP_CAPABLE ;







 int GUSBCFG ;
 int GUSBCFG_HNPCAP ;
 int GUSBCFG_SRPCAP ;
 int dwc2_readl (struct dwc2_hsotg*,int ) ;
 int dwc2_writel (struct dwc2_hsotg*,int,int ) ;

__attribute__((used)) static void dwc2_gusbcfg_init(struct dwc2_hsotg *hsotg)
{
 u32 usbcfg;

 usbcfg = dwc2_readl(hsotg, GUSBCFG);
 usbcfg &= ~(GUSBCFG_HNPCAP | GUSBCFG_SRPCAP);

 switch (hsotg->hw_params.op_mode) {
 case 134:
  if (hsotg->params.otg_cap ==
    DWC2_CAP_PARAM_HNP_SRP_CAPABLE)
   usbcfg |= GUSBCFG_HNPCAP;
  if (hsotg->params.otg_cap !=
    DWC2_CAP_PARAM_NO_HNP_SRP_CAPABLE)
   usbcfg |= GUSBCFG_SRPCAP;
  break;

 case 128:
 case 130:
 case 129:
  if (hsotg->params.otg_cap !=
    DWC2_CAP_PARAM_NO_HNP_SRP_CAPABLE)
   usbcfg |= GUSBCFG_SRPCAP;
  break;

 case 133:
 case 132:
 case 131:
 default:
  break;
 }

 dwc2_writel(hsotg, usbcfg, GUSBCFG);
}
