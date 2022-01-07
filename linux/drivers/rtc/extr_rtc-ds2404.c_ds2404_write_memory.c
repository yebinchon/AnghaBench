
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct device {int dummy; } ;
struct TYPE_2__ {int gpio; } ;


 int DS2404_COPY_SCRATCHPAD_CMD ;
 size_t DS2404_DQ ;
 int DS2404_READ_SCRATCHPAD_CMD ;
 int DS2404_WRITE_SCRATCHPAD_CMD ;
 int dev_err (struct device*,char*) ;
 TYPE_1__* ds2404_gpio ;
 int ds2404_read_byte (struct device*) ;
 int ds2404_reset (struct device*) ;
 int ds2404_write_byte (struct device*,int) ;
 int gpio_direction_input (int ) ;
 scalar_t__ gpio_get_value (int ) ;

__attribute__((used)) static void ds2404_write_memory(struct device *dev, u16 offset,
    int length, u8 *out)
{
 int i;
 u8 ta01, ta02, es;

 ds2404_reset(dev);
 ds2404_write_byte(dev, DS2404_WRITE_SCRATCHPAD_CMD);
 ds2404_write_byte(dev, offset & 0xff);
 ds2404_write_byte(dev, (offset >> 8) & 0xff);

 for (i = 0; i < length; i++)
  ds2404_write_byte(dev, out[i]);

 ds2404_reset(dev);
 ds2404_write_byte(dev, DS2404_READ_SCRATCHPAD_CMD);

 ta01 = ds2404_read_byte(dev);
 ta02 = ds2404_read_byte(dev);
 es = ds2404_read_byte(dev);

 for (i = 0; i < length; i++) {
  if (out[i] != ds2404_read_byte(dev)) {
   dev_err(dev, "read invalid data\n");
   return;
  }
 }

 ds2404_reset(dev);
 ds2404_write_byte(dev, DS2404_COPY_SCRATCHPAD_CMD);
 ds2404_write_byte(dev, ta01);
 ds2404_write_byte(dev, ta02);
 ds2404_write_byte(dev, es);

 gpio_direction_input(ds2404_gpio[DS2404_DQ].gpio);
 while (gpio_get_value(ds2404_gpio[DS2404_DQ].gpio))
  ;
}
