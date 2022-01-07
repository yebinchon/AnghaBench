
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct usb_hcd {int regs; } ;


 int CMD_RUN ;
 int HC_HW_MODE_CTRL ;
 int HC_USBCMD ;
 int HW_GLOBAL_INTR_EN ;
 int isp1760_stop (struct usb_hcd*) ;
 int reg_read32 (int ,int ) ;
 int reg_write32 (int ,int ,int) ;

__attribute__((used)) static void isp1760_shutdown(struct usb_hcd *hcd)
{
 u32 command, temp;

 isp1760_stop(hcd);
 temp = reg_read32(hcd->regs, HC_HW_MODE_CTRL);
 reg_write32(hcd->regs, HC_HW_MODE_CTRL, temp &= ~HW_GLOBAL_INTR_EN);

 command = reg_read32(hcd->regs, HC_USBCMD);
 command &= ~CMD_RUN;
 reg_write32(hcd->regs, HC_USBCMD, command);
}
