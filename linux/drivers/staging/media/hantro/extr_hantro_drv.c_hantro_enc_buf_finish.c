
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct vb2_buffer {TYPE_1__* planes; } ;
struct TYPE_7__ {scalar_t__ cpu; } ;
struct TYPE_8__ {TYPE_3__ bounce_buffer; } ;
struct hantro_ctx {TYPE_2__* vpu_dst_fmt; TYPE_4__ jpeg_enc; } ;
struct TYPE_6__ {size_t header_size; } ;
struct TYPE_5__ {size_t bytesused; } ;


 int EINVAL ;
 int memcpy (size_t,scalar_t__,unsigned int) ;
 size_t vb2_plane_size (struct vb2_buffer*,int ) ;
 size_t vb2_plane_vaddr (struct vb2_buffer*,int ) ;

__attribute__((used)) static int
hantro_enc_buf_finish(struct hantro_ctx *ctx, struct vb2_buffer *buf,
        unsigned int bytesused)
{
 size_t avail_size;

 avail_size = vb2_plane_size(buf, 0) - ctx->vpu_dst_fmt->header_size;
 if (bytesused > avail_size)
  return -EINVAL;





 if (ctx->jpeg_enc.bounce_buffer.cpu) {
  memcpy(vb2_plane_vaddr(buf, 0) +
         ctx->vpu_dst_fmt->header_size,
         ctx->jpeg_enc.bounce_buffer.cpu, bytesused);
 }
 buf->planes[0].bytesused =
  ctx->vpu_dst_fmt->header_size + bytesused;
 return 0;
}
