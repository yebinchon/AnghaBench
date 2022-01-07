
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_pix_format {scalar_t__ sizeimage; int pixelformat; } ;
struct TYPE_2__ {struct v4l2_pix_format pix; } ;
struct v4l2_format {TYPE_1__ fmt; } ;
struct file {int dummy; } ;
struct cedrus_dev {int capabilities; } ;
struct cedrus_ctx {struct cedrus_dev* dev; } ;


 int CEDRUS_DECODE_SRC ;
 int EINVAL ;
 int cedrus_check_format (int ,int ,int ) ;
 struct cedrus_ctx* cedrus_file2ctx (struct file*) ;
 int cedrus_prepare_format (struct v4l2_pix_format*) ;

__attribute__((used)) static int cedrus_try_fmt_vid_out(struct file *file, void *priv,
      struct v4l2_format *f)
{
 struct cedrus_ctx *ctx = cedrus_file2ctx(file);
 struct cedrus_dev *dev = ctx->dev;
 struct v4l2_pix_format *pix_fmt = &f->fmt.pix;

 if (!cedrus_check_format(pix_fmt->pixelformat, CEDRUS_DECODE_SRC,
     dev->capabilities))
  return -EINVAL;


 if (pix_fmt->sizeimage == 0)
  return -EINVAL;

 cedrus_prepare_format(pix_fmt);

 return 0;
}
