
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct soc_camera_subdev_desc {int dummy; } ;
struct ov9740_priv {int current_enable; int clk; int current_mf; } ;
struct i2c_client {int dev; } ;


 int ov9740_s_fmt (struct v4l2_subdev*,int *) ;
 int ov9740_s_stream (struct v4l2_subdev*,int) ;
 struct soc_camera_subdev_desc* soc_camera_i2c_to_desc (struct i2c_client*) ;
 int soc_camera_power_off (int *,struct soc_camera_subdev_desc*,int ) ;
 int soc_camera_power_on (int *,struct soc_camera_subdev_desc*,int ) ;
 struct ov9740_priv* to_ov9740 (struct v4l2_subdev*) ;
 struct i2c_client* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static int ov9740_s_power(struct v4l2_subdev *sd, int on)
{
 struct i2c_client *client = v4l2_get_subdevdata(sd);
 struct soc_camera_subdev_desc *ssdd = soc_camera_i2c_to_desc(client);
 struct ov9740_priv *priv = to_ov9740(sd);
 int ret;

 if (on) {
  ret = soc_camera_power_on(&client->dev, ssdd, priv->clk);
  if (ret < 0)
   return ret;

  if (priv->current_enable) {
   ov9740_s_fmt(sd, &priv->current_mf);
   ov9740_s_stream(sd, 1);
  }
 } else {
  if (priv->current_enable) {
   ov9740_s_stream(sd, 0);
   priv->current_enable = 1;
  }

  soc_camera_power_off(&client->dev, ssdd, priv->clk);
 }

 return 0;
}
