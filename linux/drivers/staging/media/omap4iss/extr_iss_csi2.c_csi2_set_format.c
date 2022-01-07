
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_mbus_framefmt {int dummy; } ;
struct v4l2_subdev_format {int which; struct v4l2_mbus_framefmt format; int pad; } ;
struct v4l2_subdev {int dummy; } ;
struct iss_csi2_device {int dummy; } ;


 int CSI2_PAD_SINK ;
 int CSI2_PAD_SOURCE ;
 int EINVAL ;
 struct v4l2_mbus_framefmt* __csi2_get_format (struct iss_csi2_device*,struct v4l2_subdev_pad_config*,int ,int ) ;
 int csi2_try_format (struct iss_csi2_device*,struct v4l2_subdev_pad_config*,int ,struct v4l2_mbus_framefmt*,int ) ;
 struct iss_csi2_device* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static int csi2_set_format(struct v4l2_subdev *sd,
      struct v4l2_subdev_pad_config *cfg,
      struct v4l2_subdev_format *fmt)
{
 struct iss_csi2_device *csi2 = v4l2_get_subdevdata(sd);
 struct v4l2_mbus_framefmt *format;

 format = __csi2_get_format(csi2, cfg, fmt->pad, fmt->which);
 if (!format)
  return -EINVAL;

 csi2_try_format(csi2, cfg, fmt->pad, &fmt->format, fmt->which);
 *format = fmt->format;


 if (fmt->pad == CSI2_PAD_SINK) {
  format = __csi2_get_format(csi2, cfg, CSI2_PAD_SOURCE,
        fmt->which);
  *format = fmt->format;
  csi2_try_format(csi2, cfg, CSI2_PAD_SOURCE, format, fmt->which);
 }

 return 0;
}
