
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_subdev_frame_size_enum {scalar_t__ index; scalar_t__ code; int min_width; int min_height; int max_width; int max_height; int which; int pad; } ;
struct v4l2_subdev {int dummy; } ;
struct v4l2_mbus_framefmt {scalar_t__ code; int width; int height; } ;
struct iss_ipipeif_device {int dummy; } ;


 int EINVAL ;
 int ipipeif_try_format (struct iss_ipipeif_device*,struct v4l2_subdev_pad_config*,int ,struct v4l2_mbus_framefmt*,int ) ;
 struct iss_ipipeif_device* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static int ipipeif_enum_frame_size(struct v4l2_subdev *sd,
       struct v4l2_subdev_pad_config *cfg,
       struct v4l2_subdev_frame_size_enum *fse)
{
 struct iss_ipipeif_device *ipipeif = v4l2_get_subdevdata(sd);
 struct v4l2_mbus_framefmt format;

 if (fse->index != 0)
  return -EINVAL;

 format.code = fse->code;
 format.width = 1;
 format.height = 1;
 ipipeif_try_format(ipipeif, cfg, fse->pad, &format, fse->which);
 fse->min_width = format.width;
 fse->min_height = format.height;

 if (format.code != fse->code)
  return -EINVAL;

 format.code = fse->code;
 format.width = -1;
 format.height = -1;
 ipipeif_try_format(ipipeif, cfg, fse->pad, &format, fse->which);
 fse->max_width = format.width;
 fse->max_height = format.height;

 return 0;
}
