
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_subdev_mbus_code_enum {int pad; size_t index; int code; int which; } ;
struct v4l2_subdev {int dummy; } ;
struct v4l2_mbus_framefmt {int code; } ;
struct iss_resizer_device {int dummy; } ;


 size_t ARRAY_SIZE (int *) ;
 int EINVAL ;

 int MEDIA_BUS_FMT_YUYV8_1_5X8 ;


 struct v4l2_mbus_framefmt* __resizer_get_format (struct iss_resizer_device*,struct v4l2_subdev_pad_config*,int const,int ) ;
 int * resizer_fmts ;
 struct iss_resizer_device* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static int resizer_enum_mbus_code(struct v4l2_subdev *sd,
      struct v4l2_subdev_pad_config *cfg,
      struct v4l2_subdev_mbus_code_enum *code)
{
 struct iss_resizer_device *resizer = v4l2_get_subdevdata(sd);
 struct v4l2_mbus_framefmt *format;

 switch (code->pad) {
 case 129:
  if (code->index >= ARRAY_SIZE(resizer_fmts))
   return -EINVAL;

  code->code = resizer_fmts[code->index];
  break;

 case 128:
  format = __resizer_get_format(resizer, cfg, 129,
           code->which);

  if (code->index == 0) {
   code->code = format->code;
   break;
  }

  switch (format->code) {
  case 130:
   if (code->index == 1)
    code->code = MEDIA_BUS_FMT_YUYV8_1_5X8;
   else
    return -EINVAL;
   break;
  default:
   if (code->index != 0)
    return -EINVAL;
  }

  break;

 default:
  return -EINVAL;
 }

 return 0;
}
