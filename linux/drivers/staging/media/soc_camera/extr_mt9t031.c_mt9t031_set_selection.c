
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_rect {void* height; int top; void* width; int left; } ;
struct v4l2_subdev_selection {scalar_t__ which; scalar_t__ target; struct v4l2_rect r; } ;
struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_subdev {int dummy; } ;
struct mt9t031 {int yskip; int xskip; } ;
struct i2c_client {int dummy; } ;


 void* ALIGN (void*,int) ;
 int EINVAL ;
 int MT9T031_COLUMN_SKIP ;
 int MT9T031_MAX_HEIGHT ;
 int MT9T031_MAX_WIDTH ;
 int MT9T031_MIN_HEIGHT ;
 int MT9T031_MIN_WIDTH ;
 int MT9T031_ROW_SKIP ;
 scalar_t__ V4L2_SEL_TGT_CROP ;
 scalar_t__ V4L2_SUBDEV_FORMAT_ACTIVE ;
 int mt9t031_set_params (struct i2c_client*,struct v4l2_rect*,int ,int ) ;
 int soc_camera_limit_side (int *,void**,int ,int ,int ) ;
 struct mt9t031* to_mt9t031 (struct i2c_client*) ;
 struct i2c_client* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static int mt9t031_set_selection(struct v4l2_subdev *sd,
  struct v4l2_subdev_pad_config *cfg,
  struct v4l2_subdev_selection *sel)
{
 struct i2c_client *client = v4l2_get_subdevdata(sd);
 struct mt9t031 *mt9t031 = to_mt9t031(client);
 struct v4l2_rect rect = sel->r;

 if (sel->which != V4L2_SUBDEV_FORMAT_ACTIVE ||
     sel->target != V4L2_SEL_TGT_CROP)
  return -EINVAL;

 rect.width = ALIGN(rect.width, 2);
 rect.height = ALIGN(rect.height, 2);

 soc_camera_limit_side(&rect.left, &rect.width,
       MT9T031_COLUMN_SKIP, MT9T031_MIN_WIDTH, MT9T031_MAX_WIDTH);

 soc_camera_limit_side(&rect.top, &rect.height,
       MT9T031_ROW_SKIP, MT9T031_MIN_HEIGHT, MT9T031_MAX_HEIGHT);

 return mt9t031_set_params(client, &rect, mt9t031->xskip, mt9t031->yskip);
}
