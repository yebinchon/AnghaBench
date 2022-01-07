
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct v4l2_pix_format_mplane {TYPE_2__* plane_fmt; } ;
struct hantro_h264_dec_priv_tbl {int cabac_table; } ;
struct hantro_aux_buf {int size; struct hantro_h264_dec_priv_tbl* cpu; int dma; } ;
struct hantro_h264_dec_hw_ctx {int pic_size; struct hantro_aux_buf priv; } ;
struct hantro_dev {int dev; } ;
struct TYPE_3__ {int height; int width; int pixelformat; } ;
struct hantro_ctx {TYPE_1__ dst_fmt; struct hantro_h264_dec_hw_ctx h264_dec; struct hantro_dev* dev; } ;
struct TYPE_4__ {int sizeimage; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct hantro_h264_dec_priv_tbl* dma_alloc_coherent (int ,int,int *,int ) ;
 int h264_cabac_table ;
 int memcpy (int ,int ,int) ;
 int v4l2_fill_pixfmt_mp (struct v4l2_pix_format_mplane*,int ,int ,int ) ;

int hantro_h264_dec_init(struct hantro_ctx *ctx)
{
 struct hantro_dev *vpu = ctx->dev;
 struct hantro_h264_dec_hw_ctx *h264_dec = &ctx->h264_dec;
 struct hantro_aux_buf *priv = &h264_dec->priv;
 struct hantro_h264_dec_priv_tbl *tbl;
 struct v4l2_pix_format_mplane pix_mp;

 priv->cpu = dma_alloc_coherent(vpu->dev, sizeof(*tbl), &priv->dma,
           GFP_KERNEL);
 if (!priv->cpu)
  return -ENOMEM;

 priv->size = sizeof(*tbl);
 tbl = priv->cpu;
 memcpy(tbl->cabac_table, h264_cabac_table, sizeof(tbl->cabac_table));

 v4l2_fill_pixfmt_mp(&pix_mp, ctx->dst_fmt.pixelformat,
       ctx->dst_fmt.width, ctx->dst_fmt.height);
 h264_dec->pic_size = pix_mp.plane_fmt[0].sizeimage;

 return 0;
}
