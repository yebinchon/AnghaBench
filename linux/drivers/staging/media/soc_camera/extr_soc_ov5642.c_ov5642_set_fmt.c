
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct v4l2_mbus_framefmt {int field; int colorspace; int code; int height; int width; } ;
struct v4l2_subdev_pad_config {struct v4l2_mbus_framefmt try_fmt; } ;
struct v4l2_subdev_format {scalar_t__ which; scalar_t__ pad; struct v4l2_mbus_framefmt format; } ;
struct v4l2_subdev {int dummy; } ;
struct ov5642_datafmt {int dummy; } ;
struct TYPE_3__ {int height; int width; } ;
struct ov5642 {struct ov5642_datafmt const* fmt; TYPE_1__ crop_rect; } ;
struct i2c_client {int dummy; } ;
struct TYPE_4__ {int colorspace; int code; } ;


 int EINVAL ;
 int V4L2_FIELD_NONE ;
 scalar_t__ V4L2_SUBDEV_FORMAT_ACTIVE ;
 TYPE_2__* ov5642_colour_fmts ;
 struct ov5642_datafmt* ov5642_find_datafmt (int ) ;
 struct ov5642* to_ov5642 (struct i2c_client*) ;
 struct i2c_client* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static int ov5642_set_fmt(struct v4l2_subdev *sd,
  struct v4l2_subdev_pad_config *cfg,
  struct v4l2_subdev_format *format)
{
 struct v4l2_mbus_framefmt *mf = &format->format;
 struct i2c_client *client = v4l2_get_subdevdata(sd);
 struct ov5642 *priv = to_ov5642(client);
 const struct ov5642_datafmt *fmt = ov5642_find_datafmt(mf->code);

 if (format->pad)
  return -EINVAL;

 mf->width = priv->crop_rect.width;
 mf->height = priv->crop_rect.height;

 if (!fmt) {
  if (format->which == V4L2_SUBDEV_FORMAT_ACTIVE)
   return -EINVAL;
  mf->code = ov5642_colour_fmts[0].code;
  mf->colorspace = ov5642_colour_fmts[0].colorspace;
 }

 mf->field = V4L2_FIELD_NONE;

 if (format->which == V4L2_SUBDEV_FORMAT_ACTIVE)
  priv->fmt = fmt;
 else
  cfg->try_fmt = *mf;
 return 0;
}
