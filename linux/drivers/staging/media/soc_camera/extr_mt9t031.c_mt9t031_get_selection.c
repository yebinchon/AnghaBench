
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int height; int width; int top; int left; } ;
struct v4l2_subdev_selection {scalar_t__ which; int target; TYPE_1__ r; } ;
struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_subdev {int dummy; } ;
struct mt9t031 {TYPE_1__ rect; } ;
struct i2c_client {int dummy; } ;


 int EINVAL ;
 int MT9T031_COLUMN_SKIP ;
 int MT9T031_MAX_HEIGHT ;
 int MT9T031_MAX_WIDTH ;
 int MT9T031_ROW_SKIP ;


 scalar_t__ V4L2_SUBDEV_FORMAT_ACTIVE ;
 struct mt9t031* to_mt9t031 (struct i2c_client*) ;
 struct i2c_client* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static int mt9t031_get_selection(struct v4l2_subdev *sd,
  struct v4l2_subdev_pad_config *cfg,
  struct v4l2_subdev_selection *sel)
{
 struct i2c_client *client = v4l2_get_subdevdata(sd);
 struct mt9t031 *mt9t031 = to_mt9t031(client);

 if (sel->which != V4L2_SUBDEV_FORMAT_ACTIVE)
  return -EINVAL;

 switch (sel->target) {
 case 128:
  sel->r.left = MT9T031_COLUMN_SKIP;
  sel->r.top = MT9T031_ROW_SKIP;
  sel->r.width = MT9T031_MAX_WIDTH;
  sel->r.height = MT9T031_MAX_HEIGHT;
  return 0;
 case 129:
  sel->r = mt9t031->rect;
  return 0;
 default:
  return -EINVAL;
 }
}
