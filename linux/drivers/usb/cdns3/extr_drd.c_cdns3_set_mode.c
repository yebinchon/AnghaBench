
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct cdns3 {int dev; TYPE_2__* otg_v0_regs; TYPE_1__* otg_v1_regs; int version; } ;
typedef enum usb_dr_mode { ____Placeholder_usb_dr_mode } usb_dr_mode ;
struct TYPE_4__ {int ctrl1; } ;
struct TYPE_3__ {int override; } ;


 int CDNS3_CONTROLLER_V1 ;
 int EINVAL ;
 int OVERRIDE_IDPULLUP ;
 int OVERRIDE_IDPULLUP_V0 ;



 int dev_dbg (int ,char*) ;
 int dev_err (int ,char*,int) ;
 int readl (int *) ;
 int usleep_range (int,int) ;
 int writel (int ,int *) ;

int cdns3_set_mode(struct cdns3 *cdns, enum usb_dr_mode mode)
{
 int ret = 0;
 u32 reg;

 switch (mode) {
 case 128:
  break;
 case 130:
  break;
 case 129:
  dev_dbg(cdns->dev, "Set controller to OTG mode\n");
  if (cdns->version == CDNS3_CONTROLLER_V1) {
   reg = readl(&cdns->otg_v1_regs->override);
   reg |= OVERRIDE_IDPULLUP;
   writel(reg, &cdns->otg_v1_regs->override);
  } else {
   reg = readl(&cdns->otg_v0_regs->ctrl1);
   reg |= OVERRIDE_IDPULLUP_V0;
   writel(reg, &cdns->otg_v0_regs->ctrl1);
  }






  usleep_range(50000, 60000);
  break;
 default:
  dev_err(cdns->dev, "Unsupported mode of operation %d\n", mode);
  return -EINVAL;
 }

 return ret;
}
