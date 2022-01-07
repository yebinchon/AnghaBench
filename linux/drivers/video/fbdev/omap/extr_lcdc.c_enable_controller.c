
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int irq_mask; } ;


 int OMAP_LCDC_CONTROL ;
 int OMAP_LCDC_CTRL_LCD_EN ;
 int OMAP_LCDC_IRQ_DONE ;
 int OMAP_LCDC_IRQ_MASK ;
 TYPE_1__ lcdc ;
 int omap_readl (int ) ;
 int omap_writel (int,int ) ;

__attribute__((used)) static void enable_controller(void)
{
 u32 l;

 l = omap_readl(OMAP_LCDC_CONTROL);
 l |= OMAP_LCDC_CTRL_LCD_EN;
 l &= ~OMAP_LCDC_IRQ_MASK;
 l |= lcdc.irq_mask | OMAP_LCDC_IRQ_DONE;
 omap_writel(l, OMAP_LCDC_CONTROL);
}
