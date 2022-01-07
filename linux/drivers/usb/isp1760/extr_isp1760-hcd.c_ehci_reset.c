
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct usb_hcd {int state; int regs; } ;
struct isp1760_hcd {int next_statechange; } ;


 int CMD_RESET ;
 int HC_STATE_HALT ;
 int HC_USBCMD ;
 int handshake (struct usb_hcd*,int ,int ,int ,int) ;
 struct isp1760_hcd* hcd_to_priv (struct usb_hcd*) ;
 int jiffies ;
 int reg_read32 (int ,int ) ;
 int reg_write32 (int ,int ,int ) ;

__attribute__((used)) static int ehci_reset(struct usb_hcd *hcd)
{
 struct isp1760_hcd *priv = hcd_to_priv(hcd);

 u32 command = reg_read32(hcd->regs, HC_USBCMD);

 command |= CMD_RESET;
 reg_write32(hcd->regs, HC_USBCMD, command);
 hcd->state = HC_STATE_HALT;
 priv->next_statechange = jiffies;

 return handshake(hcd, HC_USBCMD, CMD_RESET, 0, 250 * 1000);
}
