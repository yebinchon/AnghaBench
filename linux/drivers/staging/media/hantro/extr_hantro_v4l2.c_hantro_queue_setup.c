
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vb2_queue {int type; } ;
struct v4l2_pix_format_mplane {unsigned int num_planes; TYPE_1__* plane_fmt; } ;
struct hantro_ctx {struct v4l2_pix_format_mplane src_fmt; struct v4l2_pix_format_mplane dst_fmt; } ;
struct device {int dummy; } ;
struct TYPE_2__ {unsigned int sizeimage; } ;


 int EINVAL ;


 struct hantro_ctx* vb2_get_drv_priv (struct vb2_queue*) ;
 int vpu_err (char*,int) ;

__attribute__((used)) static int
hantro_queue_setup(struct vb2_queue *vq, unsigned int *num_buffers,
     unsigned int *num_planes, unsigned int sizes[],
     struct device *alloc_devs[])
{
 struct hantro_ctx *ctx = vb2_get_drv_priv(vq);
 struct v4l2_pix_format_mplane *pixfmt;
 int i;

 switch (vq->type) {
 case 129:
  pixfmt = &ctx->dst_fmt;
  break;
 case 128:
  pixfmt = &ctx->src_fmt;
  break;
 default:
  vpu_err("invalid queue type: %d\n", vq->type);
  return -EINVAL;
 }

 if (*num_planes) {
  if (*num_planes != pixfmt->num_planes)
   return -EINVAL;
  for (i = 0; i < pixfmt->num_planes; ++i)
   if (sizes[i] < pixfmt->plane_fmt[i].sizeimage)
    return -EINVAL;
  return 0;
 }

 *num_planes = pixfmt->num_planes;
 for (i = 0; i < pixfmt->num_planes; ++i)
  sizes[i] = pixfmt->plane_fmt[i].sizeimage;
 return 0;
}
