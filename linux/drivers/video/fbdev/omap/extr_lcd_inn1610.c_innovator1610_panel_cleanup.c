
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lcd_panel {int dummy; } ;


 int gpio_free (int) ;

__attribute__((used)) static void innovator1610_panel_cleanup(struct lcd_panel *panel)
{
 gpio_free(15);
 gpio_free(14);
}
