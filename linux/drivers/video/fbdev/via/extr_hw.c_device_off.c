
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int viafb_dvi_disable () ;
 int viafb_lcd_disable () ;

__attribute__((used)) static void device_off(void)
{
 viafb_dvi_disable();
 viafb_lcd_disable();
}
