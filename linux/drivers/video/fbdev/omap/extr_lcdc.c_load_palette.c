
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_4__ {int palette_code; int palette_size; int ext_mode; TYPE_1__* fbdev; int palette_load_complete; int palette_phys; scalar_t__ palette_virt; } ;
struct TYPE_3__ {int dev; } ;


 int OMAP_DMA_DATA_TYPE_S32 ;
 int OMAP_LCDC_IRQ_LOADED_PALETTE ;
 int OMAP_LCDC_LOAD_PALETTE ;
 int dev_err (int ,char*) ;
 int disable_irqs (int ) ;
 int enable_controller () ;
 int enable_irqs (int ) ;
 int init_completion (int *) ;
 TYPE_2__ lcdc ;
 int msecs_to_jiffies (int) ;
 int omap_set_lcd_dma_b1 (int ,int,int,int ) ;
 int omap_set_lcd_dma_single_transfer (int) ;
 int omap_setup_lcd_dma () ;
 int omap_stop_lcd_dma () ;
 int set_load_mode (int ) ;
 int wait_for_completion_timeout (int *,int ) ;

__attribute__((used)) static void load_palette(void)
{
 u16 *palette;

 palette = (u16 *)lcdc.palette_virt;

 *(u16 *)palette &= 0x0fff;
 *(u16 *)palette |= lcdc.palette_code;

 omap_set_lcd_dma_b1(lcdc.palette_phys,
  lcdc.palette_size / 4 + 1, 1, OMAP_DMA_DATA_TYPE_S32);

 omap_set_lcd_dma_single_transfer(1);
 omap_setup_lcd_dma();

 init_completion(&lcdc.palette_load_complete);
 enable_irqs(OMAP_LCDC_IRQ_LOADED_PALETTE);
 set_load_mode(OMAP_LCDC_LOAD_PALETTE);
 enable_controller();
 if (!wait_for_completion_timeout(&lcdc.palette_load_complete,
    msecs_to_jiffies(500)))
  dev_err(lcdc.fbdev->dev, "timeout waiting for FRAME DONE\n");

 disable_irqs(OMAP_LCDC_IRQ_LOADED_PALETTE);
 omap_stop_lcd_dma();

 omap_set_lcd_dma_single_transfer(lcdc.ext_mode);
}
