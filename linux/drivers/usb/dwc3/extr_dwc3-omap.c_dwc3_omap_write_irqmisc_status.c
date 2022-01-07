
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dwc3_omap {scalar_t__ irqmisc_offset; int base; } ;


 scalar_t__ USBOTGSS_IRQSTATUS_MISC ;
 int dwc3_omap_writel (int ,scalar_t__,int ) ;

__attribute__((used)) static void dwc3_omap_write_irqmisc_status(struct dwc3_omap *omap, u32 value)
{
 dwc3_omap_writel(omap->base, USBOTGSS_IRQSTATUS_MISC +
     omap->irqmisc_offset, value);

}
