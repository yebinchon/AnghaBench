
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * type; } ;
struct video_device {TYPE_1__ dev; } ;
struct v4l2_subdev {int dummy; } ;
struct soc_camera_subdev_desc {int dummy; } ;
struct mt9t031 {int clk; } ;
struct i2c_client {int dev; } ;


 int mt9t031_dev_type ;
 struct soc_camera_subdev_desc* soc_camera_i2c_to_desc (struct i2c_client*) ;
 struct video_device* soc_camera_i2c_to_vdev (struct i2c_client*) ;
 int soc_camera_power_off (int *,struct soc_camera_subdev_desc*,int ) ;
 int soc_camera_power_on (int *,struct soc_camera_subdev_desc*,int ) ;
 struct mt9t031* to_mt9t031 (struct i2c_client*) ;
 struct i2c_client* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static int mt9t031_s_power(struct v4l2_subdev *sd, int on)
{
 struct i2c_client *client = v4l2_get_subdevdata(sd);
 struct soc_camera_subdev_desc *ssdd = soc_camera_i2c_to_desc(client);
 struct video_device *vdev = soc_camera_i2c_to_vdev(client);
 struct mt9t031 *mt9t031 = to_mt9t031(client);
 int ret;

 if (on) {
  ret = soc_camera_power_on(&client->dev, ssdd, mt9t031->clk);
  if (ret < 0)
   return ret;
  if (vdev)

   vdev->dev.type = &mt9t031_dev_type;
 } else {
  if (vdev)
   vdev->dev.type = ((void*)0);
  soc_camera_power_off(&client->dev, ssdd, mt9t031->clk);
 }

 return 0;
}
