
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct otm3225a_data {int power; int spi; } ;
struct lcd_device {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int FB_BLANK_UNBLANK ;
 int display_off ;
 int display_on ;
 struct otm3225a_data* lcd_get_data (struct lcd_device*) ;
 int otm3225a_write (int ,int ,int ) ;

__attribute__((used)) static int otm3225a_set_power(struct lcd_device *ld, int power)
{
 struct otm3225a_data *dd = lcd_get_data(ld);

 if (power == dd->power)
  return 0;

 if (power > FB_BLANK_UNBLANK)
  otm3225a_write(dd->spi, display_off, ARRAY_SIZE(display_off));
 else
  otm3225a_write(dd->spi, display_on, ARRAY_SIZE(display_on));
 dd->power = power;

 return 0;
}
