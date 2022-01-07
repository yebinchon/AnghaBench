
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_subdev_mbus_code_enum {int pad; size_t index; int code; int which; } ;
struct v4l2_subdev {int dummy; } ;
struct v4l2_mbus_framefmt {int code; } ;
struct iss_ipipeif_device {int dummy; } ;


 size_t ARRAY_SIZE (int *) ;
 int EINVAL ;



 struct v4l2_mbus_framefmt* __ipipeif_get_format (struct iss_ipipeif_device*,struct v4l2_subdev_pad_config*,int const,int ) ;
 int * ipipeif_fmts ;
 struct iss_ipipeif_device* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static int ipipeif_enum_mbus_code(struct v4l2_subdev *sd,
      struct v4l2_subdev_pad_config *cfg,
      struct v4l2_subdev_mbus_code_enum *code)
{
 struct iss_ipipeif_device *ipipeif = v4l2_get_subdevdata(sd);
 struct v4l2_mbus_framefmt *format;

 switch (code->pad) {
 case 130:
  if (code->index >= ARRAY_SIZE(ipipeif_fmts))
   return -EINVAL;

  code->code = ipipeif_fmts[code->index];
  break;

 case 129:
 case 128:

  if (code->index != 0)
   return -EINVAL;

  format = __ipipeif_get_format(ipipeif, cfg, 130,
           code->which);

  code->code = format->code;
  break;

 default:
  return -EINVAL;
 }

 return 0;
}
