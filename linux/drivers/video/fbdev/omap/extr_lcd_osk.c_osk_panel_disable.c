
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lcd_panel {int dummy; } ;


 int OMAP_PWL_CLK_ENABLE ;
 int OMAP_PWL_ENABLE ;
 int gpio_set_value (int,int ) ;
 int omap_writeb (int,int ) ;

__attribute__((used)) static void osk_panel_disable(struct lcd_panel *panel)
{

 omap_writeb(0x00, OMAP_PWL_ENABLE);


 omap_writeb(0x00, OMAP_PWL_CLK_ENABLE);


 gpio_set_value(2, 0);
}
