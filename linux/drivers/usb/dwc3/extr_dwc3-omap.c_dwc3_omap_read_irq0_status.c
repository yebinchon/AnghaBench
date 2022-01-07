
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dwc3_omap {scalar_t__ irq0_offset; int base; } ;


 scalar_t__ USBOTGSS_IRQSTATUS_RAW_0 ;
 int dwc3_omap_readl (int ,scalar_t__) ;

__attribute__((used)) static u32 dwc3_omap_read_irq0_status(struct dwc3_omap *omap)
{
 return dwc3_omap_readl(omap->base, USBOTGSS_IRQSTATUS_RAW_0 -
      omap->irq0_offset);
}
