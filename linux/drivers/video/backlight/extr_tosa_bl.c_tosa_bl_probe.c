
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct tosa_bl_data {int comadj; TYPE_3__* bl; struct i2c_client* i2c; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int dev; } ;
struct backlight_properties {int max_brightness; int type; } ;
struct TYPE_7__ {int brightness; int power; } ;
struct TYPE_9__ {TYPE_1__ props; int dev; } ;
struct TYPE_8__ {int comadj; } ;


 int BACKLIGHT_RAW ;
 int COMADJ_DEFAULT ;
 int ENOMEM ;
 int FB_BLANK_UNBLANK ;
 int GFP_KERNEL ;
 int GPIOF_OUT_INIT_LOW ;
 scalar_t__ IS_ERR (TYPE_3__*) ;
 int PTR_ERR (TYPE_3__*) ;
 int TOSA_GPIO_BL_C20MA ;
 int backlight_update_status (TYPE_3__*) ;
 int bl_ops ;
 int dev_dbg (int *,char*) ;
 TYPE_3__* devm_backlight_device_register (int *,char*,int *,struct tosa_bl_data*,int *,struct backlight_properties*) ;
 int devm_gpio_request_one (int *,int ,int ,char*) ;
 struct tosa_bl_data* devm_kzalloc (int *,int,int ) ;
 int i2c_set_clientdata (struct i2c_client*,struct tosa_bl_data*) ;
 int memset (struct backlight_properties*,int ,int) ;
 TYPE_2__ sharpsl_param ;

__attribute__((used)) static int tosa_bl_probe(struct i2c_client *client,
  const struct i2c_device_id *id)
{
 struct backlight_properties props;
 struct tosa_bl_data *data;
 int ret = 0;

 data = devm_kzalloc(&client->dev, sizeof(struct tosa_bl_data),
    GFP_KERNEL);
 if (!data)
  return -ENOMEM;

 data->comadj = sharpsl_param.comadj == -1 ? COMADJ_DEFAULT : sharpsl_param.comadj;

 ret = devm_gpio_request_one(&client->dev, TOSA_GPIO_BL_C20MA,
    GPIOF_OUT_INIT_LOW, "backlight");
 if (ret) {
  dev_dbg(&data->bl->dev, "Unable to request gpio!\n");
  return ret;
 }

 i2c_set_clientdata(client, data);
 data->i2c = client;

 memset(&props, 0, sizeof(struct backlight_properties));
 props.type = BACKLIGHT_RAW;
 props.max_brightness = 512 - 1;
 data->bl = devm_backlight_device_register(&client->dev, "tosa-bl",
      &client->dev, data, &bl_ops,
      &props);
 if (IS_ERR(data->bl)) {
  ret = PTR_ERR(data->bl);
  goto err_reg;
 }

 data->bl->props.brightness = 69;
 data->bl->props.power = FB_BLANK_UNBLANK;

 backlight_update_status(data->bl);

 return 0;

err_reg:
 data->bl = ((void*)0);
 return ret;
}
