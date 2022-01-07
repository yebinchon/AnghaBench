
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dwc3 {int dr_mode; int drd_work; int usb3_generic_phy; int usb2_generic_phy; TYPE_1__* usb2_phy; struct device* dev; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int otg; } ;


 int DWC3_GCTL_PRTCAP_DEVICE ;
 int DWC3_GCTL_PRTCAP_HOST ;
 int EINVAL ;
 int EPROBE_DEFER ;
 int INIT_WORK (int *,int ) ;
 int PHY_MODE_USB_DEVICE ;
 int PHY_MODE_USB_HOST ;



 int __dwc3_set_mode ;
 int dev_err (struct device*,char*,...) ;
 int dwc3_drd_init (struct dwc3*) ;
 int dwc3_gadget_init (struct dwc3*) ;
 int dwc3_host_init (struct dwc3*) ;
 int dwc3_set_prtcap (struct dwc3*,int ) ;
 int otg_set_vbus (int ,int) ;
 int phy_set_mode (int ,int ) ;

__attribute__((used)) static int dwc3_core_init_mode(struct dwc3 *dwc)
{
 struct device *dev = dwc->dev;
 int ret;

 switch (dwc->dr_mode) {
 case 128:
  dwc3_set_prtcap(dwc, DWC3_GCTL_PRTCAP_DEVICE);

  if (dwc->usb2_phy)
   otg_set_vbus(dwc->usb2_phy->otg, 0);
  phy_set_mode(dwc->usb2_generic_phy, PHY_MODE_USB_DEVICE);
  phy_set_mode(dwc->usb3_generic_phy, PHY_MODE_USB_DEVICE);

  ret = dwc3_gadget_init(dwc);
  if (ret) {
   if (ret != -EPROBE_DEFER)
    dev_err(dev, "failed to initialize gadget\n");
   return ret;
  }
  break;
 case 130:
  dwc3_set_prtcap(dwc, DWC3_GCTL_PRTCAP_HOST);

  if (dwc->usb2_phy)
   otg_set_vbus(dwc->usb2_phy->otg, 1);
  phy_set_mode(dwc->usb2_generic_phy, PHY_MODE_USB_HOST);
  phy_set_mode(dwc->usb3_generic_phy, PHY_MODE_USB_HOST);

  ret = dwc3_host_init(dwc);
  if (ret) {
   if (ret != -EPROBE_DEFER)
    dev_err(dev, "failed to initialize host\n");
   return ret;
  }
  break;
 case 129:
  INIT_WORK(&dwc->drd_work, __dwc3_set_mode);
  ret = dwc3_drd_init(dwc);
  if (ret) {
   if (ret != -EPROBE_DEFER)
    dev_err(dev, "failed to initialize dual-role\n");
   return ret;
  }
  break;
 default:
  dev_err(dev, "Unsupported mode of operation %d\n", dwc->dr_mode);
  return -EINVAL;
 }

 return 0;
}
