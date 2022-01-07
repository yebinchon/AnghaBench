
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vb2_buffer {int vb2_queue; } ;
struct TYPE_2__ {int m2m_ctx; } ;
struct ipu_csc_scaler_ctx {TYPE_1__ fh; } ;


 int to_vb2_v4l2_buffer (struct vb2_buffer*) ;
 int v4l2_m2m_buf_queue (int ,int ) ;
 struct ipu_csc_scaler_ctx* vb2_get_drv_priv (int ) ;

__attribute__((used)) static void ipu_csc_scaler_buf_queue(struct vb2_buffer *vb)
{
 struct ipu_csc_scaler_ctx *ctx = vb2_get_drv_priv(vb->vb2_queue);

 v4l2_m2m_buf_queue(ctx->fh.m2m_ctx, to_vb2_v4l2_buffer(vb));
}
