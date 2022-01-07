
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lcd_panel {int dummy; } ;


 int gpiod_ndisp ;
 int gpiod_set_value (int ,int ) ;
 int gpiod_vblen ;

__attribute__((used)) static void ams_delta_panel_disable(struct lcd_panel *panel)
{
 gpiod_set_value(gpiod_vblen, 0);
 gpiod_set_value(gpiod_ndisp, 0);
}
