
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct i2c_device_id {int dummy; } ;
struct i2c_client {int dev; int adapter; } ;
struct ds2482_data {int w1_count; TYPE_1__* w1_ch; int access_lock; struct i2c_client* client; } ;
struct TYPE_5__ {int set_pullup; int reset_bus; int triplet; int touch_bit; int write_byte; int read_byte; TYPE_1__* data; } ;
struct TYPE_4__ {int channel; TYPE_2__ w1_bm; struct ds2482_data* pdev; } ;


 int DS2482_CMD_RESET ;
 int DS2482_CMD_WRITE_CONFIG ;
 int DS2482_REG_STS_LL ;
 int DS2482_REG_STS_RST ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int I2C_FUNC_SMBUS_BYTE ;
 int I2C_FUNC_SMBUS_WRITE_BYTE_DATA ;
 int dev_warn (int *,char*,...) ;
 int ds2482_calculate_config (int) ;
 scalar_t__ ds2482_send_cmd (struct ds2482_data*,int ) ;
 int ds2482_send_cmd_data (struct ds2482_data*,int ,int ) ;
 scalar_t__ ds2482_set_channel (struct ds2482_data*,int) ;
 int ds2482_w1_read_byte ;
 int ds2482_w1_reset_bus ;
 int ds2482_w1_set_pullup ;
 int ds2482_w1_touch_bit ;
 int ds2482_w1_triplet ;
 int ds2482_w1_write_byte ;
 int i2c_check_functionality (int ,int) ;
 int i2c_set_clientdata (struct i2c_client*,struct ds2482_data*) ;
 int i2c_smbus_read_byte (struct i2c_client*) ;
 int kfree (struct ds2482_data*) ;
 struct ds2482_data* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int ndelay (int) ;
 int w1_add_master_device (TYPE_2__*) ;
 int w1_remove_master_device (TYPE_2__*) ;

__attribute__((used)) static int ds2482_probe(struct i2c_client *client,
   const struct i2c_device_id *id)
{
 struct ds2482_data *data;
 int err = -ENODEV;
 int temp1;
 int idx;

 if (!i2c_check_functionality(client->adapter,
         I2C_FUNC_SMBUS_WRITE_BYTE_DATA |
         I2C_FUNC_SMBUS_BYTE))
  return -ENODEV;

 if (!(data = kzalloc(sizeof(struct ds2482_data), GFP_KERNEL))) {
  err = -ENOMEM;
  goto exit;
 }

 data->client = client;
 i2c_set_clientdata(client, data);


 if (ds2482_send_cmd(data, DS2482_CMD_RESET) < 0) {
  dev_warn(&client->dev, "DS2482 reset failed.\n");
  goto exit_free;
 }


 ndelay(525);


 temp1 = i2c_smbus_read_byte(client);
 if (temp1 != (DS2482_REG_STS_LL | DS2482_REG_STS_RST)) {
  dev_warn(&client->dev, "DS2482 reset status "
    "0x%02X - not a DS2482\n", temp1);
  goto exit_free;
 }


 data->w1_count = 1;
 if (ds2482_set_channel(data, 7) == 0)
  data->w1_count = 8;


 ds2482_send_cmd_data(data, DS2482_CMD_WRITE_CONFIG,
  ds2482_calculate_config(0x00));

 mutex_init(&data->access_lock);


 for (idx = 0; idx < data->w1_count; idx++) {
  data->w1_ch[idx].pdev = data;
  data->w1_ch[idx].channel = idx;


  data->w1_ch[idx].w1_bm.data = &data->w1_ch[idx];
  data->w1_ch[idx].w1_bm.read_byte = ds2482_w1_read_byte;
  data->w1_ch[idx].w1_bm.write_byte = ds2482_w1_write_byte;
  data->w1_ch[idx].w1_bm.touch_bit = ds2482_w1_touch_bit;
  data->w1_ch[idx].w1_bm.triplet = ds2482_w1_triplet;
  data->w1_ch[idx].w1_bm.reset_bus = ds2482_w1_reset_bus;
  data->w1_ch[idx].w1_bm.set_pullup = ds2482_w1_set_pullup;

  err = w1_add_master_device(&data->w1_ch[idx].w1_bm);
  if (err) {
   data->w1_ch[idx].pdev = ((void*)0);
   goto exit_w1_remove;
  }
 }

 return 0;

exit_w1_remove:
 for (idx = 0; idx < data->w1_count; idx++) {
  if (data->w1_ch[idx].pdev != ((void*)0))
   w1_remove_master_device(&data->w1_ch[idx].w1_bm);
 }
exit_free:
 kfree(data);
exit:
 return err;
}
