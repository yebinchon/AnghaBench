
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int of_node; } ;
struct i2c_client {TYPE_1__ dev; } ;


 int EINVAL ;
 int ENODEV ;
 int ZIIRAVE_WDT_RESET_DURATION ;
 int dev_info (TYPE_1__*,char*,...) ;
 int i2c_smbus_write_byte_data (struct i2c_client*,int ,int) ;
 int of_property_read_u32 (int ,char*,int*) ;
 int reset_duration ;

__attribute__((used)) static int ziirave_wdt_init_duration(struct i2c_client *client)
{
 int ret;

 if (!reset_duration) {

  if (!client->dev.of_node)
   ret = -ENODEV;
  else
   ret = of_property_read_u32(client->dev.of_node,
         "reset-duration-ms",
         &reset_duration);
  if (ret) {
   dev_info(&client->dev,
    "No reset pulse duration specified, using default\n");
   return 0;
  }
 }

 if (reset_duration < 1 || reset_duration > 255)
  return -EINVAL;

 dev_info(&client->dev, "Setting reset duration to %dms",
   reset_duration);

 return i2c_smbus_write_byte_data(client, ZIIRAVE_WDT_RESET_DURATION,
      reset_duration);
}
