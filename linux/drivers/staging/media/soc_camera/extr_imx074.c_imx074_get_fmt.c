
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_mbus_framefmt {int field; int height; int width; int colorspace; int code; } ;
struct v4l2_subdev_format {scalar_t__ pad; struct v4l2_mbus_framefmt format; } ;
struct v4l2_subdev {int dummy; } ;
struct imx074_datafmt {int colorspace; int code; } ;
struct imx074 {struct imx074_datafmt* fmt; } ;
struct i2c_client {int dummy; } ;


 int EINVAL ;
 int IMX074_HEIGHT ;
 int IMX074_WIDTH ;
 int V4L2_FIELD_NONE ;
 struct imx074* to_imx074 (struct i2c_client*) ;
 struct i2c_client* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static int imx074_get_fmt(struct v4l2_subdev *sd,
  struct v4l2_subdev_pad_config *cfg,
  struct v4l2_subdev_format *format)
{
 struct v4l2_mbus_framefmt *mf = &format->format;
 struct i2c_client *client = v4l2_get_subdevdata(sd);
 struct imx074 *priv = to_imx074(client);

 const struct imx074_datafmt *fmt = priv->fmt;

 if (format->pad)
  return -EINVAL;

 mf->code = fmt->code;
 mf->colorspace = fmt->colorspace;
 mf->width = IMX074_WIDTH;
 mf->height = IMX074_HEIGHT;
 mf->field = V4L2_FIELD_NONE;

 return 0;
}
