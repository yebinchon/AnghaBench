
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int height; int width; int top; int left; } ;
struct v4l2_subdev_selection {scalar_t__ which; int target; TYPE_1__ r; } ;
struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_subdev {int dummy; } ;
struct ov5642 {TYPE_1__ crop_rect; } ;
struct i2c_client {int dummy; } ;


 int EINVAL ;
 int OV5642_MAX_HEIGHT ;
 int OV5642_MAX_WIDTH ;


 scalar_t__ V4L2_SUBDEV_FORMAT_ACTIVE ;
 struct ov5642* to_ov5642 (struct i2c_client*) ;
 struct i2c_client* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static int ov5642_get_selection(struct v4l2_subdev *sd,
  struct v4l2_subdev_pad_config *cfg,
  struct v4l2_subdev_selection *sel)
{
 struct i2c_client *client = v4l2_get_subdevdata(sd);
 struct ov5642 *priv = to_ov5642(client);

 if (sel->which != V4L2_SUBDEV_FORMAT_ACTIVE)
  return -EINVAL;

 switch (sel->target) {
 case 128:
  sel->r.left = 0;
  sel->r.top = 0;
  sel->r.width = OV5642_MAX_WIDTH;
  sel->r.height = OV5642_MAX_HEIGHT;
  return 0;
 case 129:
  sel->r = priv->crop_rect;
  return 0;
 default:
  return -EINVAL;
 }
}
