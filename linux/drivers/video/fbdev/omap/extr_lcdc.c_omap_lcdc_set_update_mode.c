
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef enum omapfb_update_mode { ____Placeholder_omapfb_update_mode } omapfb_update_mode ;
struct TYPE_2__ {int update_mode; } ;


 int EINVAL ;


 int OMAP_LCDC_IRQ_DONE ;
 int OMAP_LCDC_LOAD_FRAME ;
 int disable_controller () ;
 int enable_controller () ;
 int enable_irqs (int ) ;
 TYPE_1__ lcdc ;
 int load_palette () ;
 int omap_stop_lcd_dma () ;
 int set_load_mode (int ) ;
 int setup_lcd_dma () ;
 int setup_regs () ;

__attribute__((used)) static int omap_lcdc_set_update_mode(enum omapfb_update_mode mode)
{
 int r = 0;

 if (mode != lcdc.update_mode) {
  switch (mode) {
  case 129:
   setup_regs();
   load_palette();


   setup_lcd_dma();

   set_load_mode(OMAP_LCDC_LOAD_FRAME);
   enable_irqs(OMAP_LCDC_IRQ_DONE);

   enable_controller();
   lcdc.update_mode = mode;
   break;
  case 128:
   disable_controller();
   omap_stop_lcd_dma();
   lcdc.update_mode = mode;
   break;
  default:
   r = -EINVAL;
  }
 }

 return r;
}
