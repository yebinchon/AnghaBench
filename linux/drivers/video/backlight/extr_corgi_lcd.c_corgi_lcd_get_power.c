
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lcd_device {int dummy; } ;
struct corgi_lcd {int power; } ;


 struct corgi_lcd* lcd_get_data (struct lcd_device*) ;

__attribute__((used)) static int corgi_lcd_get_power(struct lcd_device *ld)
{
 struct corgi_lcd *lcd = lcd_get_data(ld);

 return lcd->power;
}
