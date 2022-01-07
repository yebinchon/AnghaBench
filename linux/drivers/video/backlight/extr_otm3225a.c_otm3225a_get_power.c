
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct otm3225a_data {int power; } ;
struct lcd_device {int dummy; } ;


 struct otm3225a_data* lcd_get_data (struct lcd_device*) ;

__attribute__((used)) static int otm3225a_get_power(struct lcd_device *ld)
{
 struct otm3225a_data *dd = lcd_get_data(ld);

 return dd->power;
}
