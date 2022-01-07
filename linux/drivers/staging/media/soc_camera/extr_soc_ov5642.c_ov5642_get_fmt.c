
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_mbus_framefmt {int field; int height; int width; int colorspace; int code; } ;
struct v4l2_subdev_format {scalar_t__ pad; struct v4l2_mbus_framefmt format; } ;
struct v4l2_subdev {int dummy; } ;
struct ov5642_datafmt {int colorspace; int code; } ;
struct TYPE_2__ {int height; int width; } ;
struct ov5642 {TYPE_1__ crop_rect; struct ov5642_datafmt* fmt; } ;
struct i2c_client {int dummy; } ;


 int EINVAL ;
 int V4L2_FIELD_NONE ;
 struct ov5642* to_ov5642 (struct i2c_client*) ;
 struct i2c_client* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static int ov5642_get_fmt(struct v4l2_subdev *sd,
  struct v4l2_subdev_pad_config *cfg,
  struct v4l2_subdev_format *format)
{
 struct v4l2_mbus_framefmt *mf = &format->format;
 struct i2c_client *client = v4l2_get_subdevdata(sd);
 struct ov5642 *priv = to_ov5642(client);

 const struct ov5642_datafmt *fmt = priv->fmt;

 if (format->pad)
  return -EINVAL;

 mf->code = fmt->code;
 mf->colorspace = fmt->colorspace;
 mf->width = priv->crop_rect.width;
 mf->height = priv->crop_rect.height;
 mf->field = V4L2_FIELD_NONE;

 return 0;
}
