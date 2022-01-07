
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_mbus_framefmt {int dummy; } ;
struct v4l2_subdev_format {int which; struct v4l2_mbus_framefmt format; int pad; } ;
struct v4l2_subdev {int dummy; } ;
struct iss_ipipeif_device {int dummy; } ;


 int EINVAL ;
 int IPIPEIF_PAD_SINK ;
 int IPIPEIF_PAD_SOURCE_ISIF_SF ;
 int IPIPEIF_PAD_SOURCE_VP ;
 struct v4l2_mbus_framefmt* __ipipeif_get_format (struct iss_ipipeif_device*,struct v4l2_subdev_pad_config*,int ,int ) ;
 int ipipeif_try_format (struct iss_ipipeif_device*,struct v4l2_subdev_pad_config*,int ,struct v4l2_mbus_framefmt*,int ) ;
 struct iss_ipipeif_device* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static int ipipeif_set_format(struct v4l2_subdev *sd,
         struct v4l2_subdev_pad_config *cfg,
         struct v4l2_subdev_format *fmt)
{
 struct iss_ipipeif_device *ipipeif = v4l2_get_subdevdata(sd);
 struct v4l2_mbus_framefmt *format;

 format = __ipipeif_get_format(ipipeif, cfg, fmt->pad, fmt->which);
 if (!format)
  return -EINVAL;

 ipipeif_try_format(ipipeif, cfg, fmt->pad, &fmt->format, fmt->which);
 *format = fmt->format;


 if (fmt->pad == IPIPEIF_PAD_SINK) {
  format = __ipipeif_get_format(ipipeif, cfg,
           IPIPEIF_PAD_SOURCE_ISIF_SF,
           fmt->which);
  *format = fmt->format;
  ipipeif_try_format(ipipeif, cfg, IPIPEIF_PAD_SOURCE_ISIF_SF,
       format, fmt->which);

  format = __ipipeif_get_format(ipipeif, cfg,
           IPIPEIF_PAD_SOURCE_VP,
           fmt->which);
  *format = fmt->format;
  ipipeif_try_format(ipipeif, cfg, IPIPEIF_PAD_SOURCE_VP, format,
       fmt->which);
 }

 return 0;
}
