
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev_selection {int r; int flags; int target; int which; } ;
struct v4l2_subdev {int dummy; } ;
struct v4l2_selection {int r; int flags; int target; } ;
struct soc_camera_device {int dummy; } ;


 int V4L2_SUBDEV_FORMAT_ACTIVE ;
 int pad ;
 int set_selection ;
 struct v4l2_subdev* soc_camera_to_subdev (struct soc_camera_device*) ;
 int v4l2_subdev_call (struct v4l2_subdev*,int ,int ,int *,struct v4l2_subdev_selection*) ;

__attribute__((used)) static int default_s_selection(struct soc_camera_device *icd,
          struct v4l2_selection *sel)
{
 struct v4l2_subdev *sd = soc_camera_to_subdev(icd);
 struct v4l2_subdev_selection sdsel = {
  .which = V4L2_SUBDEV_FORMAT_ACTIVE,
  .target = sel->target,
  .flags = sel->flags,
  .r = sel->r,
 };
 int ret;

 ret = v4l2_subdev_call(sd, pad, set_selection, ((void*)0), &sdsel);
 if (ret)
  return ret;
 sel->r = sdsel.r;
 return 0;
}
