
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v4l2_std_id ;
struct v4l2_subdev {int dummy; } ;
struct soc_camera_device {int dummy; } ;
struct file {struct soc_camera_device* private_data; } ;


 int s_std ;
 struct v4l2_subdev* soc_camera_to_subdev (struct soc_camera_device*) ;
 int v4l2_subdev_call (struct v4l2_subdev*,int ,int ,int ) ;
 int video ;

__attribute__((used)) static int soc_camera_s_std(struct file *file, void *priv, v4l2_std_id a)
{
 struct soc_camera_device *icd = file->private_data;
 struct v4l2_subdev *sd = soc_camera_to_subdev(icd);

 return v4l2_subdev_call(sd, video, s_std, a);
}
