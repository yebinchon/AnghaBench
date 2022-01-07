
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lcd_device {int dummy; } ;
struct ili9320 {int dummy; } ;


 int ili9320_power (struct ili9320*,int) ;
 struct ili9320* to_our_lcd (struct lcd_device*) ;

__attribute__((used)) static int ili9320_set_power(struct lcd_device *ld, int power)
{
 struct ili9320 *lcd = to_our_lcd(ld);

 return ili9320_power(lcd, power);
}
