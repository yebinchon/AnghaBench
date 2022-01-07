
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_mbus_framefmt {int dummy; } ;
struct v4l2_subdev_format {int which; struct v4l2_mbus_framefmt format; int pad; } ;
struct v4l2_subdev {int dummy; } ;
struct iss_resizer_device {int dummy; } ;


 int EINVAL ;
 int RESIZER_PAD_SINK ;
 int RESIZER_PAD_SOURCE_MEM ;
 struct v4l2_mbus_framefmt* __resizer_get_format (struct iss_resizer_device*,struct v4l2_subdev_pad_config*,int ,int ) ;
 int resizer_try_format (struct iss_resizer_device*,struct v4l2_subdev_pad_config*,int ,struct v4l2_mbus_framefmt*,int ) ;
 struct iss_resizer_device* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static int resizer_set_format(struct v4l2_subdev *sd,
         struct v4l2_subdev_pad_config *cfg,
         struct v4l2_subdev_format *fmt)
{
 struct iss_resizer_device *resizer = v4l2_get_subdevdata(sd);
 struct v4l2_mbus_framefmt *format;

 format = __resizer_get_format(resizer, cfg, fmt->pad, fmt->which);
 if (!format)
  return -EINVAL;

 resizer_try_format(resizer, cfg, fmt->pad, &fmt->format, fmt->which);
 *format = fmt->format;


 if (fmt->pad == RESIZER_PAD_SINK) {
  format = __resizer_get_format(resizer, cfg,
           RESIZER_PAD_SOURCE_MEM,
           fmt->which);
  *format = fmt->format;
  resizer_try_format(resizer, cfg, RESIZER_PAD_SOURCE_MEM, format,
       fmt->which);
 }

 return 0;
}
