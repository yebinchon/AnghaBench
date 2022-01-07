
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_rect {int width; int height; int left; int top; } ;
struct v4l2_subdev_selection {scalar_t__ which; scalar_t__ target; struct v4l2_rect r; } ;
struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_subdev {int dummy; } ;
struct mt9v022 {scalar_t__ fmts; int y_skip_top; struct v4l2_rect rect; int vblank; int hblank; int chip_version; TYPE_1__* reg; } ;
struct i2c_client {int dev; } ;
struct TYPE_2__ {int max_total_shutter_width; } ;


 void* ALIGN (int,int) ;
 int EINVAL ;
 int MT9V022_AEC_AGC_ENABLE ;
 int MT9V022_COLUMN_SKIP ;
 int MT9V022_COLUMN_START ;
 int MT9V022_MAX_HEIGHT ;
 int MT9V022_MAX_WIDTH ;
 int MT9V022_MIN_HEIGHT ;
 int MT9V022_MIN_WIDTH ;
 int MT9V022_ROW_SKIP ;
 int MT9V022_ROW_START ;
 int MT9V022_WINDOW_HEIGHT ;
 int MT9V022_WINDOW_WIDTH ;
 scalar_t__ V4L2_SEL_TGT_CROP ;
 scalar_t__ V4L2_SUBDEV_FORMAT_ACTIVE ;
 int dev_dbg (int *,char*,int,int) ;
 scalar_t__ is_mt9v024 (int ) ;
 scalar_t__ mt9v022_colour_fmts ;
 int reg_read (struct i2c_client*,int ) ;
 int reg_write (struct i2c_client*,int ,int) ;
 int soc_camera_limit_side (int*,int*,int ,int ,int ) ;
 struct mt9v022* to_mt9v022 (struct i2c_client*) ;
 int v4l2_ctrl_s_ctrl (int ,int) ;
 struct i2c_client* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static int mt9v022_set_selection(struct v4l2_subdev *sd,
  struct v4l2_subdev_pad_config *cfg,
  struct v4l2_subdev_selection *sel)
{
 struct i2c_client *client = v4l2_get_subdevdata(sd);
 struct mt9v022 *mt9v022 = to_mt9v022(client);
 struct v4l2_rect rect = sel->r;
 int min_row, min_blank;
 int ret;

 if (sel->which != V4L2_SUBDEV_FORMAT_ACTIVE ||
     sel->target != V4L2_SEL_TGT_CROP)
  return -EINVAL;


 if (mt9v022->fmts == mt9v022_colour_fmts) {
  rect.width = ALIGN(rect.width, 2);
  rect.height = ALIGN(rect.height, 2);

 }

 soc_camera_limit_side(&rect.left, &rect.width,
       MT9V022_COLUMN_SKIP, MT9V022_MIN_WIDTH, MT9V022_MAX_WIDTH);

 soc_camera_limit_side(&rect.top, &rect.height,
       MT9V022_ROW_SKIP, MT9V022_MIN_HEIGHT, MT9V022_MAX_HEIGHT);


 ret = reg_read(client, MT9V022_AEC_AGC_ENABLE);
 if (ret >= 0) {
  if (ret & 1)
   ret = reg_write(client, mt9v022->reg->max_total_shutter_width,
     rect.height + mt9v022->y_skip_top + 43);
 }

 if (!ret)
  ret = reg_write(client, MT9V022_COLUMN_START, rect.left);
 if (!ret)
  ret = reg_write(client, MT9V022_ROW_START, rect.top);




 if (is_mt9v024(mt9v022->chip_version)) {
  min_row = 690;
  min_blank = 61;
 } else {
  min_row = 660;
  min_blank = 43;
 }
 if (!ret)
  ret = v4l2_ctrl_s_ctrl(mt9v022->hblank,
    rect.width > min_row - min_blank ?
    min_blank : min_row - rect.width);
 if (!ret)
  ret = v4l2_ctrl_s_ctrl(mt9v022->vblank, 45);
 if (!ret)
  ret = reg_write(client, MT9V022_WINDOW_WIDTH, rect.width);
 if (!ret)
  ret = reg_write(client, MT9V022_WINDOW_HEIGHT,
    rect.height + mt9v022->y_skip_top);

 if (ret < 0)
  return ret;

 dev_dbg(&client->dev, "Frame %dx%d pixel\n", rect.width, rect.height);

 mt9v022->rect = rect;

 return 0;
}
