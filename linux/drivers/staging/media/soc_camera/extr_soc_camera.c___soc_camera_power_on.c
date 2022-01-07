
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct soc_camera_device {int dummy; } ;


 int ENODEV ;
 int ENOIOCTLCMD ;
 int core ;
 int s_power ;
 struct v4l2_subdev* soc_camera_to_subdev (struct soc_camera_device*) ;
 int v4l2_subdev_call (struct v4l2_subdev*,int ,int ,int) ;

__attribute__((used)) static int __soc_camera_power_on(struct soc_camera_device *icd)
{
 struct v4l2_subdev *sd = soc_camera_to_subdev(icd);
 int ret;

 ret = v4l2_subdev_call(sd, core, s_power, 1);
 if (ret < 0 && ret != -ENOIOCTLCMD && ret != -ENODEV)
  return ret;

 return 0;
}
