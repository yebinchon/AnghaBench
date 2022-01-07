
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int ;
typedef int u16 ;
struct TYPE_2__ {scalar_t__ color_mode; scalar_t__ palette_virt; } ;


 int EINVAL ;
 scalar_t__ OMAPFB_COLOR_CLUT_8BPP ;
 int OMAP_LCDC_LOAD_FRAME ;
 int disable_controller () ;
 int enable_controller () ;
 TYPE_1__ lcdc ;
 int load_palette () ;
 int omap_stop_lcd_dma () ;
 int set_load_mode (int ) ;
 int setup_lcd_dma () ;

__attribute__((used)) static int omap_lcdc_setcolreg(u_int regno, u16 red, u16 green, u16 blue,
          u16 transp, int update_hw_pal)
{
 u16 *palette;

 if (lcdc.color_mode != OMAPFB_COLOR_CLUT_8BPP || regno > 255)
  return -EINVAL;

 palette = (u16 *)lcdc.palette_virt;

 palette[regno] &= ~0x0fff;
 palette[regno] |= ((red >> 12) << 8) | ((green >> 12) << 4 ) |
      (blue >> 12);

 if (update_hw_pal) {
  disable_controller();
  omap_stop_lcd_dma();
  load_palette();
  setup_lcd_dma();
  set_load_mode(OMAP_LCDC_LOAD_FRAME);
  enable_controller();
 }

 return 0;
}
