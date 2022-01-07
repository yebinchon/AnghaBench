
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct v4l2_pix_format {int height; int width; int quantization; int ycbcr_enc; } ;
struct v4l2_mbus_framefmt {int height; int width; int quantization; int ycbcr_enc; } ;
struct prp_priv {int ic; int out_ch; int rot_mode; struct imx_media_pixfmt** cc; struct v4l2_mbus_framefmt* format_mbus; struct imx_ic_priv* ic_priv; struct imx_media_video_dev* vdev; } ;
struct ipu_ic_csc {int dummy; } ;
struct TYPE_3__ {struct v4l2_pix_format pix; } ;
struct TYPE_4__ {TYPE_1__ fmt; } ;
struct imx_media_video_dev {struct imx_media_pixfmt* cc; TYPE_2__ fmt; } ;
struct imx_media_pixfmt {int cs; } ;
struct imx_ic_priv {int ipu; int sd; } ;
typedef int dma_addr_t ;


 size_t PRPENCVF_SINK_PAD ;
 int VB2_BUF_STATE_QUEUED ;
 int ipu_cpmem_dump (int ) ;
 int ipu_dump (int ) ;
 int ipu_ic_calc_csc (struct ipu_ic_csc*,int ,int ,int ,int ,int ,int ) ;
 int ipu_ic_dump (int ) ;
 int ipu_ic_enable (int ) ;
 int ipu_ic_task_enable (int ) ;
 int ipu_ic_task_init (int ,struct ipu_ic_csc*,int ,int ,int ,int ) ;
 int ipu_idmac_enable_channel (int ) ;
 int ipu_idmac_select_buffer (int ,int) ;
 int prp_setup_channel (struct prp_priv*,int ,int ,int ,int ,int) ;
 int prp_setup_vb2_buf (struct prp_priv*,int *) ;
 int prp_unsetup_vb2_buf (struct prp_priv*,int ) ;
 int v4l2_err (int *,char*,int) ;

__attribute__((used)) static int prp_setup_norotation(struct prp_priv *priv)
{
 struct imx_media_video_dev *vdev = priv->vdev;
 struct imx_ic_priv *ic_priv = priv->ic_priv;
 const struct imx_media_pixfmt *outcc, *incc;
 struct v4l2_mbus_framefmt *infmt;
 struct v4l2_pix_format *outfmt;
 struct ipu_ic_csc csc;
 dma_addr_t phys[2];
 int ret;

 infmt = &priv->format_mbus[PRPENCVF_SINK_PAD];
 outfmt = &vdev->fmt.fmt.pix;
 incc = priv->cc[PRPENCVF_SINK_PAD];
 outcc = vdev->cc;

 ret = ipu_ic_calc_csc(&csc,
         infmt->ycbcr_enc, infmt->quantization,
         incc->cs,
         outfmt->ycbcr_enc, outfmt->quantization,
         outcc->cs);
 if (ret) {
  v4l2_err(&ic_priv->sd, "ipu_ic_calc_csc failed, %d\n",
    ret);
  return ret;
 }

 ret = ipu_ic_task_init(priv->ic, &csc,
          infmt->width, infmt->height,
          outfmt->width, outfmt->height);
 if (ret) {
  v4l2_err(&ic_priv->sd, "ipu_ic_task_init failed, %d\n", ret);
  return ret;
 }

 prp_setup_vb2_buf(priv, phys);


 ret = prp_setup_channel(priv, priv->out_ch, priv->rot_mode,
    phys[0], phys[1], 0);
 if (ret) {
  v4l2_err(&ic_priv->sd,
    "prp_setup_channel(out_ch) failed, %d\n", ret);
  goto unsetup_vb2;
 }

 ipu_cpmem_dump(priv->out_ch);
 ipu_ic_dump(priv->ic);
 ipu_dump(ic_priv->ipu);

 ipu_ic_enable(priv->ic);


 ipu_idmac_select_buffer(priv->out_ch, 0);
 ipu_idmac_select_buffer(priv->out_ch, 1);


 ipu_idmac_enable_channel(priv->out_ch);


 ipu_ic_task_enable(priv->ic);

 return 0;

unsetup_vb2:
 prp_unsetup_vb2_buf(priv, VB2_BUF_STATE_QUEUED);
 return ret;
}
