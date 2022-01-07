
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int controller; } ;
struct usb_hcd {int regs; TYPE_1__ self; } ;
struct isp1760_hcd {int hcs_params; } ;


 int ALL_ATX_RESET ;
 int ENODEV ;
 int HC_ATL_PTD_SKIPMAP_REG ;
 int HC_BUFFER_STATUS_REG ;
 int HC_CHIP_ID_REG ;
 int HC_HCSPARAMS ;
 int HC_HW_MODE_CTRL ;
 int HC_INTERRUPT_ENABLE ;
 int HC_INT_PTD_SKIPMAP_REG ;
 int HC_ISO_PTD_SKIPMAP_REG ;
 int HC_SCRATCH_REG ;
 int INTERRUPT_ENABLE_MASK ;
 int NO_TRANSFER_ACTIVE ;
 int dev_err (int ,char*) ;
 int ehci_reset (struct usb_hcd*) ;
 struct isp1760_hcd* hcd_to_priv (struct usb_hcd*) ;
 int mdelay (int) ;
 int priv_init (struct usb_hcd*) ;
 int reg_read32 (int ,int ) ;
 int reg_write32 (int ,int ,int) ;

__attribute__((used)) static int isp1760_hc_setup(struct usb_hcd *hcd)
{
 struct isp1760_hcd *priv = hcd_to_priv(hcd);
 int result;
 u32 scratch, hwmode;

 reg_write32(hcd->regs, HC_SCRATCH_REG, 0xdeadbabe);

 scratch = reg_read32(hcd->regs, HC_CHIP_ID_REG);
 scratch = reg_read32(hcd->regs, HC_SCRATCH_REG);
 if (scratch != 0xdeadbabe) {
  dev_err(hcd->self.controller, "Scratch test failed.\n");
  return -ENODEV;
 }
 reg_write32(hcd->regs, HC_BUFFER_STATUS_REG, 0);
 reg_write32(hcd->regs, HC_ATL_PTD_SKIPMAP_REG, NO_TRANSFER_ACTIVE);
 reg_write32(hcd->regs, HC_INT_PTD_SKIPMAP_REG, NO_TRANSFER_ACTIVE);
 reg_write32(hcd->regs, HC_ISO_PTD_SKIPMAP_REG, NO_TRANSFER_ACTIVE);

 result = ehci_reset(hcd);
 if (result)
  return result;




 hwmode = reg_read32(hcd->regs, HC_HW_MODE_CTRL) & ~ALL_ATX_RESET;
 reg_write32(hcd->regs, HC_HW_MODE_CTRL, hwmode | ALL_ATX_RESET);
 mdelay(10);
 reg_write32(hcd->regs, HC_HW_MODE_CTRL, hwmode);

 reg_write32(hcd->regs, HC_INTERRUPT_ENABLE, INTERRUPT_ENABLE_MASK);

 priv->hcs_params = reg_read32(hcd->regs, HC_HCSPARAMS);

 return priv_init(hcd);
}
