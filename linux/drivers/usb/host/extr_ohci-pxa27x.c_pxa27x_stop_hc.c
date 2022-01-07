
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct usb_hcd {int self; } ;
struct pxaohci_platform_data {int (* exit ) (struct device*) ;} ;
struct pxa27x_ohci {int clk; scalar_t__ mmio_base; } ;
struct device {int dummy; } ;


 scalar_t__ UHCCOMS ;
 int __raw_readl (scalar_t__) ;
 int __raw_writel (int,scalar_t__) ;
 int clk_disable_unprepare (int ) ;
 scalar_t__ cpu_is_pxa3xx () ;
 struct usb_hcd* dev_get_drvdata (struct device*) ;
 struct pxaohci_platform_data* dev_get_platdata (struct device*) ;
 int pxa27x_reset_hc (struct pxa27x_ohci*) ;
 int pxa3xx_u2d_stop_hc (int *) ;
 int stub1 (struct device*) ;
 int udelay (int) ;

__attribute__((used)) static void pxa27x_stop_hc(struct pxa27x_ohci *pxa_ohci, struct device *dev)
{
 struct pxaohci_platform_data *inf;
 struct usb_hcd *hcd = dev_get_drvdata(dev);
 uint32_t uhccoms;

 inf = dev_get_platdata(dev);

 if (cpu_is_pxa3xx())
  pxa3xx_u2d_stop_hc(&hcd->self);

 if (inf->exit)
  inf->exit(dev);

 pxa27x_reset_hc(pxa_ohci);


 uhccoms = __raw_readl(pxa_ohci->mmio_base + UHCCOMS) | 0x01;
 __raw_writel(uhccoms, pxa_ohci->mmio_base + UHCCOMS);
 udelay(10);

 clk_disable_unprepare(pxa_ohci->clk);
}
