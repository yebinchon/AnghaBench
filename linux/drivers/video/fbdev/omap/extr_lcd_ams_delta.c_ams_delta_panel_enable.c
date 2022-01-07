
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lcd_panel {int dummy; } ;


 int gpiod_ndisp ;
 int gpiod_set_value (int ,int) ;
 int gpiod_vblen ;

__attribute__((used)) static int ams_delta_panel_enable(struct lcd_panel *panel)
{
 gpiod_set_value(gpiod_ndisp, 1);
 gpiod_set_value(gpiod_vblen, 1);
 return 0;
}
