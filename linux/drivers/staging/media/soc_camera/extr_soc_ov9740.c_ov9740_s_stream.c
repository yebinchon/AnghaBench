
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct ov9740_priv {int current_enable; scalar_t__ flag_hflip; scalar_t__ flag_vflip; } ;
struct i2c_client {int dev; } ;


 int OV9740_IMAGE_ORT ;
 int OV9740_MODE_SELECT ;
 int OV9740_SOFTWARE_RESET ;
 int dev_dbg (int *,char*) ;
 int ov9740_reg_rmw (struct i2c_client*,int ,int,int) ;
 int ov9740_reg_write (struct i2c_client*,int ,int) ;
 struct ov9740_priv* to_ov9740 (struct v4l2_subdev*) ;
 struct i2c_client* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static int ov9740_s_stream(struct v4l2_subdev *sd, int enable)
{
 struct i2c_client *client = v4l2_get_subdevdata(sd);
 struct ov9740_priv *priv = to_ov9740(sd);
 int ret;


 if (priv->flag_vflip)
  ret = ov9740_reg_rmw(client, OV9740_IMAGE_ORT, 0x2, 0);
 else
  ret = ov9740_reg_rmw(client, OV9740_IMAGE_ORT, 0, 0x2);
 if (ret < 0)
  return ret;

 if (priv->flag_hflip)
  ret = ov9740_reg_rmw(client, OV9740_IMAGE_ORT, 0x1, 0);
 else
  ret = ov9740_reg_rmw(client, OV9740_IMAGE_ORT, 0, 0x1);
 if (ret < 0)
  return ret;

 if (enable) {
  dev_dbg(&client->dev, "Enabling Streaming\n");

  ret = ov9740_reg_write(client, OV9740_MODE_SELECT, 0x01);

 } else {
  dev_dbg(&client->dev, "Disabling Streaming\n");

  ret = ov9740_reg_write(client, OV9740_SOFTWARE_RESET, 0x01);
  if (!ret)

   ret = ov9740_reg_write(client, OV9740_MODE_SELECT,
            0x00);
 }

 priv->current_enable = enable;

 return ret;
}
