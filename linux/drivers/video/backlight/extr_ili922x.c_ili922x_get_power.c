
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lcd_device {int dummy; } ;
struct ili922x {int power; } ;


 struct ili922x* lcd_get_data (struct lcd_device*) ;

__attribute__((used)) static int ili922x_get_power(struct lcd_device *ld)
{
 struct ili922x *ili = lcd_get_data(ld);

 return ili->power;
}
