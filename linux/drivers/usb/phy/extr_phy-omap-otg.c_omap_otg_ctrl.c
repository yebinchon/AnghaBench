
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct otg_device {scalar_t__ base; } ;


 scalar_t__ OMAP_OTG_CTRL ;
 int OMAP_OTG_XCEIV_OUTPUTS ;
 int readl (scalar_t__) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void omap_otg_ctrl(struct otg_device *otg_dev, u32 outputs)
{
 u32 l;

 l = readl(otg_dev->base + OMAP_OTG_CTRL);
 l &= ~OMAP_OTG_XCEIV_OUTPUTS;
 l |= outputs;
 writel(l, otg_dev->base + OMAP_OTG_CTRL);
}
