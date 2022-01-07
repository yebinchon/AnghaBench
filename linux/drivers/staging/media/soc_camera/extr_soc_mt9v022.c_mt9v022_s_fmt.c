
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int height; int width; int top; int left; } ;
struct v4l2_subdev_selection {TYPE_1__ r; int target; int which; } ;
struct v4l2_subdev {int dummy; } ;
struct v4l2_mbus_framefmt {int code; int colorspace; int height; int width; } ;
struct mt9v022_datafmt {int colorspace; } ;
struct TYPE_4__ {int height; int width; int top; int left; } ;
struct mt9v022 {struct mt9v022_datafmt const* fmt; TYPE_2__ rect; int model; } ;
struct i2c_client {int dummy; } ;


 int EINVAL ;




 int MT9V022IX7ATC ;
 int MT9V022IX7ATM ;
 int V4L2_SEL_TGT_CROP ;
 int V4L2_SUBDEV_FORMAT_ACTIVE ;
 int mt9v022_set_selection (struct v4l2_subdev*,int *,struct v4l2_subdev_selection*) ;
 struct mt9v022* to_mt9v022 (struct i2c_client*) ;
 struct i2c_client* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static int mt9v022_s_fmt(struct v4l2_subdev *sd,
    const struct mt9v022_datafmt *fmt,
    struct v4l2_mbus_framefmt *mf)
{
 struct i2c_client *client = v4l2_get_subdevdata(sd);
 struct mt9v022 *mt9v022 = to_mt9v022(client);
 struct v4l2_subdev_selection sel = {
  .which = V4L2_SUBDEV_FORMAT_ACTIVE,
  .target = V4L2_SEL_TGT_CROP,
  .r.left = mt9v022->rect.left,
  .r.top = mt9v022->rect.top,
  .r.width = mf->width,
  .r.height = mf->height,
 };
 int ret;





 switch (mf->code) {
 case 128:
 case 129:
  if (mt9v022->model != MT9V022IX7ATM)
   return -EINVAL;
  break;
 case 130:
 case 131:
  if (mt9v022->model != MT9V022IX7ATC)
   return -EINVAL;
  break;
 default:
  return -EINVAL;
 }


 ret = mt9v022_set_selection(sd, ((void*)0), &sel);
 if (!ret) {
  mf->width = mt9v022->rect.width;
  mf->height = mt9v022->rect.height;
  mt9v022->fmt = fmt;
  mf->colorspace = fmt->colorspace;
 }

 return ret;
}
