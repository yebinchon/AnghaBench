
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lms501kf03 {int power; } ;
struct lcd_device {int dummy; } ;


 struct lms501kf03* lcd_get_data (struct lcd_device*) ;

__attribute__((used)) static int lms501kf03_get_power(struct lcd_device *ld)
{
 struct lms501kf03 *lcd = lcd_get_data(ld);

 return lcd->power;
}
