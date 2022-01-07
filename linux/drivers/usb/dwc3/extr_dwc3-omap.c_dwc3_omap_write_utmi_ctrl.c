
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dwc3_omap {scalar_t__ utmi_otg_offset; int base; } ;


 scalar_t__ USBOTGSS_UTMI_OTG_CTRL ;
 int dwc3_omap_writel (int ,scalar_t__,int ) ;

__attribute__((used)) static void dwc3_omap_write_utmi_ctrl(struct dwc3_omap *omap, u32 value)
{
 dwc3_omap_writel(omap->base, USBOTGSS_UTMI_OTG_CTRL +
     omap->utmi_otg_offset, value);

}
