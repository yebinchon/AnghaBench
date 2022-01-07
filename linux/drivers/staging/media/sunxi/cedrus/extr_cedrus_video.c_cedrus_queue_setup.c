
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct vb2_queue {int type; } ;
struct v4l2_pix_format {unsigned int sizeimage; int pixelformat; } ;
struct device {int dummy; } ;
struct cedrus_dev {int capabilities; } ;
struct cedrus_ctx {struct v4l2_pix_format dst_fmt; struct v4l2_pix_format src_fmt; struct cedrus_dev* dev; } ;


 int CEDRUS_DECODE_DST ;
 int CEDRUS_DECODE_SRC ;
 int EINVAL ;
 scalar_t__ V4L2_TYPE_IS_OUTPUT (int ) ;
 int cedrus_check_format (int ,int ,int ) ;
 struct cedrus_ctx* vb2_get_drv_priv (struct vb2_queue*) ;

__attribute__((used)) static int cedrus_queue_setup(struct vb2_queue *vq, unsigned int *nbufs,
         unsigned int *nplanes, unsigned int sizes[],
         struct device *alloc_devs[])
{
 struct cedrus_ctx *ctx = vb2_get_drv_priv(vq);
 struct cedrus_dev *dev = ctx->dev;
 struct v4l2_pix_format *pix_fmt;
 u32 directions;

 if (V4L2_TYPE_IS_OUTPUT(vq->type)) {
  directions = CEDRUS_DECODE_SRC;
  pix_fmt = &ctx->src_fmt;
 } else {
  directions = CEDRUS_DECODE_DST;
  pix_fmt = &ctx->dst_fmt;
 }

 if (!cedrus_check_format(pix_fmt->pixelformat, directions,
     dev->capabilities))
  return -EINVAL;

 if (*nplanes) {
  if (sizes[0] < pix_fmt->sizeimage)
   return -EINVAL;
 } else {
  sizes[0] = pix_fmt->sizeimage;
  *nplanes = 1;
 }

 return 0;
}
