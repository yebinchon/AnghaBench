
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct v4l2_subdev {int dummy; } ;
struct i2c_client {int dev; } ;


 int ENODEV ;
 int REG_CHIP_ID_HIGH ;
 int REG_CHIP_ID_LOW ;
 int dev_info (int *,char*,int) ;
 struct v4l2_subdev* i2c_get_clientdata (struct i2c_client*) ;
 int ov5642_s_power (struct v4l2_subdev*,int) ;
 int reg_read (struct i2c_client*,int ,int*) ;

__attribute__((used)) static int ov5642_video_probe(struct i2c_client *client)
{
 struct v4l2_subdev *subdev = i2c_get_clientdata(client);
 int ret;
 u8 id_high, id_low;
 u16 id;

 ret = ov5642_s_power(subdev, 1);
 if (ret < 0)
  return ret;


 ret = reg_read(client, REG_CHIP_ID_HIGH, &id_high);
 if (ret < 0)
  goto done;

 id = id_high << 8;

 ret = reg_read(client, REG_CHIP_ID_LOW, &id_low);
 if (ret < 0)
  goto done;

 id |= id_low;

 dev_info(&client->dev, "Chip ID 0x%04x detected\n", id);

 if (id != 0x5642) {
  ret = -ENODEV;
  goto done;
 }

 ret = 0;

done:
 ov5642_s_power(subdev, 0);
 return ret;
}
