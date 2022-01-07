
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dwc3_omap {int debug_offset; int utmi_otg_offset; int irqmisc_offset; int irq0_offset; int irq_eoi_offset; TYPE_1__* dev; } ;
struct device_node {int dummy; } ;
struct TYPE_2__ {struct device_node* of_node; } ;


 int USBOTGSS_DEBUG_OFFSET ;
 int USBOTGSS_EOI_OFFSET ;
 int USBOTGSS_IRQ0_OFFSET ;
 int USBOTGSS_IRQMISC_OFFSET ;
 int USBOTGSS_UTMI_OTG_OFFSET ;
 scalar_t__ of_device_is_compatible (struct device_node*,char*) ;

__attribute__((used)) static void dwc3_omap_map_offset(struct dwc3_omap *omap)
{
 struct device_node *node = omap->dev->of_node;
 if (of_device_is_compatible(node, "ti,am437x-dwc3")) {
  omap->irq_eoi_offset = USBOTGSS_EOI_OFFSET;
  omap->irq0_offset = USBOTGSS_IRQ0_OFFSET;
  omap->irqmisc_offset = USBOTGSS_IRQMISC_OFFSET;
  omap->utmi_otg_offset = USBOTGSS_UTMI_OTG_OFFSET;
  omap->debug_offset = USBOTGSS_DEBUG_OFFSET;
 }
}
