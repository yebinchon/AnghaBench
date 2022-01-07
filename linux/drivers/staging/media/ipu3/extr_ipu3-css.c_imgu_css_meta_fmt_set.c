
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_meta_format {int dataformat; int buffersize; } ;
struct ipu3_uapi_stats_3a {int dummy; } ;
struct ipu3_uapi_params {int dummy; } ;


 int EINVAL ;



int imgu_css_meta_fmt_set(struct v4l2_meta_format *fmt)
{
 switch (fmt->dataformat) {
 case 129:
  fmt->buffersize = sizeof(struct ipu3_uapi_params);
  break;
 case 128:
  fmt->buffersize = sizeof(struct ipu3_uapi_stats_3a);
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
