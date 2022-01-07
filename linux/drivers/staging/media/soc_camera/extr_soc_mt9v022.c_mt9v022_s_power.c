
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct soc_camera_subdev_desc {int dummy; } ;
struct mt9v022 {int clk; } ;
struct i2c_client {int dev; } ;


 struct soc_camera_subdev_desc* soc_camera_i2c_to_desc (struct i2c_client*) ;
 int soc_camera_set_power (int *,struct soc_camera_subdev_desc*,int ,int) ;
 struct mt9v022* to_mt9v022 (struct i2c_client*) ;
 struct i2c_client* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static int mt9v022_s_power(struct v4l2_subdev *sd, int on)
{
 struct i2c_client *client = v4l2_get_subdevdata(sd);
 struct soc_camera_subdev_desc *ssdd = soc_camera_i2c_to_desc(client);
 struct mt9v022 *mt9v022 = to_mt9v022(client);

 return soc_camera_set_power(&client->dev, ssdd, mt9v022->clk, on);
}
