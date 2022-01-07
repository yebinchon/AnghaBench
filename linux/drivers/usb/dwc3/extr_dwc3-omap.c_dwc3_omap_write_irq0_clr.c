
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dwc3_omap {scalar_t__ irq0_offset; int base; } ;


 scalar_t__ USBOTGSS_IRQENABLE_CLR_0 ;
 int dwc3_omap_writel (int ,scalar_t__,int ) ;

__attribute__((used)) static void dwc3_omap_write_irq0_clr(struct dwc3_omap *omap, u32 value)
{
 dwc3_omap_writel(omap->base, USBOTGSS_IRQENABLE_CLR_0 -
      omap->irq0_offset, value);
}
