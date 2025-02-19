
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct i2c_device_id {int driver_data; } ;
struct i2c_client {int dev; int adapter; } ;
struct backlight_properties {int brightness; int max_brightness; int type; } ;
struct TYPE_2__ {int kobj; } ;
struct backlight_device {TYPE_1__ dev; } ;
struct adp8870_bl {struct backlight_device* bl; struct adp8870_backlight_platform_data* pdata; int revid; int lock; scalar_t__ current_brightness; int id; struct i2c_client* client; } ;
struct adp8870_backlight_platform_data {scalar_t__ en_ambl_sens; scalar_t__ num_leds; } ;
typedef int props ;


 int ADP8870_DEVID (int ) ;
 scalar_t__ ADP8870_MANID (int ) ;
 scalar_t__ ADP8870_MANUFID ;
 int ADP8870_MAX_BRIGHTNESS ;
 int ADP8870_MFDVID ;
 int BACKLIGHT_RAW ;
 int EINVAL ;
 int EIO ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int I2C_FUNC_SMBUS_BYTE_DATA ;
 scalar_t__ IS_ERR (struct backlight_device*) ;
 int PTR_ERR (struct backlight_device*) ;
 int adp8870_bl_attr_group ;
 int adp8870_bl_ops ;
 int adp8870_bl_setup (struct backlight_device*) ;
 int adp8870_led_probe (struct i2c_client*) ;
 int adp8870_read (struct i2c_client*,int ,int *) ;
 int backlight_update_status (struct backlight_device*) ;
 int dev_driver_string (int *) ;
 int dev_err (int *,char*) ;
 struct adp8870_backlight_platform_data* dev_get_platdata (int *) ;
 int dev_info (int *,char*,int ) ;
 struct backlight_device* devm_backlight_device_register (int *,int ,int *,struct adp8870_bl*,int *,struct backlight_properties*) ;
 struct adp8870_bl* devm_kzalloc (int *,int,int ) ;
 int i2c_check_functionality (int ,int ) ;
 int i2c_set_clientdata (struct i2c_client*,struct adp8870_bl*) ;
 int memset (struct backlight_properties*,int ,int) ;
 int mutex_init (int *) ;
 int sysfs_create_group (int *,int *) ;
 int sysfs_remove_group (int *,int *) ;

__attribute__((used)) static int adp8870_probe(struct i2c_client *client,
     const struct i2c_device_id *id)
{
 struct backlight_properties props;
 struct backlight_device *bl;
 struct adp8870_bl *data;
 struct adp8870_backlight_platform_data *pdata =
  dev_get_platdata(&client->dev);
 uint8_t reg_val;
 int ret;

 if (!i2c_check_functionality(client->adapter,
     I2C_FUNC_SMBUS_BYTE_DATA)) {
  dev_err(&client->dev, "SMBUS Byte Data not Supported\n");
  return -EIO;
 }

 if (!pdata) {
  dev_err(&client->dev, "no platform data?\n");
  return -EINVAL;
 }

 ret = adp8870_read(client, ADP8870_MFDVID, &reg_val);
 if (ret < 0)
  return -EIO;

 if (ADP8870_MANID(reg_val) != ADP8870_MANUFID) {
  dev_err(&client->dev, "failed to probe\n");
  return -ENODEV;
 }

 data = devm_kzalloc(&client->dev, sizeof(*data), GFP_KERNEL);
 if (data == ((void*)0))
  return -ENOMEM;

 data->revid = ADP8870_DEVID(reg_val);
 data->client = client;
 data->pdata = pdata;
 data->id = id->driver_data;
 data->current_brightness = 0;
 i2c_set_clientdata(client, data);

 mutex_init(&data->lock);

 memset(&props, 0, sizeof(props));
 props.type = BACKLIGHT_RAW;
 props.max_brightness = props.brightness = ADP8870_MAX_BRIGHTNESS;
 bl = devm_backlight_device_register(&client->dev,
    dev_driver_string(&client->dev),
    &client->dev, data, &adp8870_bl_ops, &props);
 if (IS_ERR(bl)) {
  dev_err(&client->dev, "failed to register backlight\n");
  return PTR_ERR(bl);
 }

 data->bl = bl;

 if (pdata->en_ambl_sens) {
  ret = sysfs_create_group(&bl->dev.kobj,
   &adp8870_bl_attr_group);
  if (ret) {
   dev_err(&client->dev, "failed to register sysfs\n");
   return ret;
  }
 }

 ret = adp8870_bl_setup(bl);
 if (ret) {
  ret = -EIO;
  goto out;
 }

 backlight_update_status(bl);

 dev_info(&client->dev, "Rev.%d Backlight\n", data->revid);

 if (pdata->num_leds)
  adp8870_led_probe(client);

 return 0;

out:
 if (data->pdata->en_ambl_sens)
  sysfs_remove_group(&data->bl->dev.kobj,
   &adp8870_bl_attr_group);

 return ret;
}
