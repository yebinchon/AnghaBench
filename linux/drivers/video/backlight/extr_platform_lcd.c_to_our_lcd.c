
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_lcd {int dummy; } ;
struct lcd_device {int dummy; } ;


 struct platform_lcd* lcd_get_data (struct lcd_device*) ;

__attribute__((used)) static inline struct platform_lcd *to_our_lcd(struct lcd_device *lcd)
{
 return lcd_get_data(lcd);
}
