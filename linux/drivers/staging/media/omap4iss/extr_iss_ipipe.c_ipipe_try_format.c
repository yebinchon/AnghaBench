
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_mbus_framefmt {unsigned int width; unsigned int height; int field; int colorspace; int code; } ;
struct iss_ipipe_device {int dummy; } ;
typedef enum v4l2_subdev_format_whence { ____Placeholder_v4l2_subdev_format_whence } v4l2_subdev_format_whence ;


 unsigned int ARRAY_SIZE (int *) ;


 int MEDIA_BUS_FMT_SGRBG10_1X10 ;
 int MEDIA_BUS_FMT_UYVY8_1X16 ;
 int V4L2_COLORSPACE_JPEG ;
 int V4L2_COLORSPACE_SRGB ;
 int V4L2_FIELD_NONE ;
 struct v4l2_mbus_framefmt* __ipipe_get_format (struct iss_ipipe_device*,struct v4l2_subdev_pad_config*,int const,int) ;
 void* clamp_t (int ,unsigned int,int,int) ;
 int * ipipe_fmts ;
 int memcpy (struct v4l2_mbus_framefmt*,struct v4l2_mbus_framefmt*,int) ;
 int u32 ;

__attribute__((used)) static void
ipipe_try_format(struct iss_ipipe_device *ipipe,
   struct v4l2_subdev_pad_config *cfg,
   unsigned int pad,
   struct v4l2_mbus_framefmt *fmt,
   enum v4l2_subdev_format_whence which)
{
 struct v4l2_mbus_framefmt *format;
 unsigned int width = fmt->width;
 unsigned int height = fmt->height;
 unsigned int i;

 switch (pad) {
 case 129:
  for (i = 0; i < ARRAY_SIZE(ipipe_fmts); i++) {
   if (fmt->code == ipipe_fmts[i])
    break;
  }


  if (i >= ARRAY_SIZE(ipipe_fmts))
   fmt->code = MEDIA_BUS_FMT_SGRBG10_1X10;


  fmt->width = clamp_t(u32, width, 1, 8192);
  fmt->height = clamp_t(u32, height, 1, 8192);
  fmt->colorspace = V4L2_COLORSPACE_SRGB;
  break;

 case 128:
  format = __ipipe_get_format(ipipe, cfg, 129, which);
  memcpy(fmt, format, sizeof(*fmt));

  fmt->code = MEDIA_BUS_FMT_UYVY8_1X16;
  fmt->width = clamp_t(u32, width, 32, fmt->width);
  fmt->height = clamp_t(u32, height, 32, fmt->height);
  fmt->colorspace = V4L2_COLORSPACE_JPEG;
  break;
 }

 fmt->field = V4L2_FIELD_NONE;
}
