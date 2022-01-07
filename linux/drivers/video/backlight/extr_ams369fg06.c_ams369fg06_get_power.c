
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lcd_device {int dummy; } ;
struct ams369fg06 {int power; } ;


 struct ams369fg06* lcd_get_data (struct lcd_device*) ;

__attribute__((used)) static int ams369fg06_get_power(struct lcd_device *ld)
{
 struct ams369fg06 *lcd = lcd_get_data(ld);

 return lcd->power;
}
