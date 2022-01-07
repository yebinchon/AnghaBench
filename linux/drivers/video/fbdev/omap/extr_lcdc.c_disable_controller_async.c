
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int OMAP_LCDC_CONTROL ;
 int OMAP_LCDC_CTRL_LCD_EN ;
 int OMAP_LCDC_IRQ_DONE ;
 int OMAP_LCDC_IRQ_MASK ;
 int omap_readl (int ) ;
 int omap_writel (int,int ) ;

__attribute__((used)) static void disable_controller_async(void)
{
 u32 l;
 u32 mask;

 l = omap_readl(OMAP_LCDC_CONTROL);
 mask = OMAP_LCDC_CTRL_LCD_EN | OMAP_LCDC_IRQ_MASK;




 mask &= ~OMAP_LCDC_IRQ_DONE;
 l &= ~mask;
 omap_writel(l, OMAP_LCDC_CONTROL);
}
