
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_mbus_framefmt {int width; int height; int field; int colorspace; int code; } ;
struct v4l2_subdev_format {scalar_t__ pad; struct v4l2_mbus_framefmt format; } ;
struct v4l2_subdev {int dummy; } ;
struct TYPE_2__ {int width; int height; } ;
struct mt9t031 {int xskip; int yskip; TYPE_1__ rect; } ;
struct i2c_client {int dummy; } ;


 int EINVAL ;
 int MEDIA_BUS_FMT_SBGGR10_1X10 ;
 int V4L2_COLORSPACE_SRGB ;
 int V4L2_FIELD_NONE ;
 struct mt9t031* to_mt9t031 (struct i2c_client*) ;
 struct i2c_client* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static int mt9t031_get_fmt(struct v4l2_subdev *sd,
  struct v4l2_subdev_pad_config *cfg,
  struct v4l2_subdev_format *format)
{
 struct v4l2_mbus_framefmt *mf = &format->format;
 struct i2c_client *client = v4l2_get_subdevdata(sd);
 struct mt9t031 *mt9t031 = to_mt9t031(client);

 if (format->pad)
  return -EINVAL;

 mf->width = mt9t031->rect.width / mt9t031->xskip;
 mf->height = mt9t031->rect.height / mt9t031->yskip;
 mf->code = MEDIA_BUS_FMT_SBGGR10_1X10;
 mf->colorspace = V4L2_COLORSPACE_SRGB;
 mf->field = V4L2_FIELD_NONE;

 return 0;
}
