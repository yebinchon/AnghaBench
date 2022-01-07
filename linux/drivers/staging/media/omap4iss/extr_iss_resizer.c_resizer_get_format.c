
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_mbus_framefmt {int dummy; } ;
struct v4l2_subdev_format {struct v4l2_mbus_framefmt format; int which; int pad; } ;
struct v4l2_subdev {int dummy; } ;
struct iss_resizer_device {int dummy; } ;


 int EINVAL ;
 struct v4l2_mbus_framefmt* __resizer_get_format (struct iss_resizer_device*,struct v4l2_subdev_pad_config*,int ,int ) ;
 struct iss_resizer_device* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static int resizer_get_format(struct v4l2_subdev *sd,
         struct v4l2_subdev_pad_config *cfg,
         struct v4l2_subdev_format *fmt)
{
 struct iss_resizer_device *resizer = v4l2_get_subdevdata(sd);
 struct v4l2_mbus_framefmt *format;

 format = __resizer_get_format(resizer, cfg, fmt->pad, fmt->which);
 if (!format)
  return -EINVAL;

 fmt->format = *format;
 return 0;
}
