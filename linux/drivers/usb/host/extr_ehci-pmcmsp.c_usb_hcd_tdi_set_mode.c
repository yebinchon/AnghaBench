
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct ehci_regs {int dummy; } ;
struct ehci_hcd {struct ehci_regs* regs; } ;


 int MSP_PIN_USB0_HOST_DEV ;
 int USB_CTRL_FIFO_THRESH ;
 int USB_CTRL_MODE_STREAM_DISABLE ;
 int USB_EHCI_REG_BIT_STAT_STS ;
 int USB_EHCI_REG_USB_FIFO ;
 int USB_EHCI_REG_USB_MODE ;
 int USB_EHCI_REG_USB_STATUS ;
 int ehci_readl (struct ehci_hcd*,int*) ;
 int ehci_writel (struct ehci_hcd*,int,int*) ;
 int gpio_direction_output (int ,int) ;

__attribute__((used)) static void usb_hcd_tdi_set_mode(struct ehci_hcd *ehci)
{
 u8 *base;
 u8 *statreg;
 u8 *fiforeg;
 u32 val;
 struct ehci_regs *reg_base = ehci->regs;


 base = (u8 *)reg_base + USB_EHCI_REG_USB_MODE;
 statreg = (u8 *)reg_base + USB_EHCI_REG_USB_STATUS;
 fiforeg = (u8 *)reg_base + USB_EHCI_REG_USB_FIFO;


 val = ehci_readl(ehci, (u32 *)base);
 ehci_writel(ehci, (val | USB_CTRL_MODE_STREAM_DISABLE),
   (u32 *)base);


 val = ehci_readl(ehci, (u32 *)statreg);
 val = val & ~USB_EHCI_REG_BIT_STAT_STS;
 ehci_writel(ehci, val, (u32 *)statreg);


 ehci_writel(ehci, USB_CTRL_FIFO_THRESH, (u32 *)fiforeg);


 gpio_direction_output(MSP_PIN_USB0_HOST_DEV, 1);
}
