
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct v4l2_pix_format {int sizeimage; } ;
struct TYPE_3__ {struct v4l2_pix_format pix; } ;
struct TYPE_4__ {TYPE_1__ fmt; } ;
struct imx_media_video_dev {TYPE_2__ fmt; } ;
struct csi_priv {int last_eof; int nfb4eof; int underrun_buf; int dev; void* nfb4eof_irq; int eof_timeout_timer; int sd; void* eof_irq; int idmac_ch; int ipu; scalar_t__ frame_sequence; int last_eof_comp; scalar_t__ ipu_buf_num; int vc_num; int csi_id; int smfc; struct imx_media_video_dev* vdev; } ;


 int IMX_MEDIA_EOF_TIMEOUT ;
 int IPU_IRQ_EOF ;
 int IPU_IRQ_NFB4EOF ;
 int VB2_BUF_STATE_QUEUED ;
 int csi_idmac_eof_interrupt ;
 int csi_idmac_get_ipu_resources (struct csi_priv*) ;
 int csi_idmac_nfb4eof_interrupt ;
 int csi_idmac_put_ipu_resources (struct csi_priv*) ;
 int csi_idmac_setup (struct csi_priv*) ;
 int csi_idmac_unsetup (struct csi_priv*,int ) ;
 int devm_free_irq (int ,void*,struct csi_priv*) ;
 int devm_request_irq (int ,void*,int ,int ,char*,struct csi_priv*) ;
 int imx_media_alloc_dma_buf (int ,int *,int ) ;
 int imx_media_free_dma_buf (int ,int *) ;
 int init_completion (int *) ;
 void* ipu_idmac_channel_irq (int ,int ,int ) ;
 int ipu_smfc_map_channel (int ,int ,int ) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (int ) ;
 int v4l2_err (int *,char*,int) ;

__attribute__((used)) static int csi_idmac_start(struct csi_priv *priv)
{
 struct imx_media_video_dev *vdev = priv->vdev;
 struct v4l2_pix_format *outfmt;
 int ret;

 ret = csi_idmac_get_ipu_resources(priv);
 if (ret)
  return ret;

 ipu_smfc_map_channel(priv->smfc, priv->csi_id, priv->vc_num);

 outfmt = &vdev->fmt.fmt.pix;

 ret = imx_media_alloc_dma_buf(priv->dev, &priv->underrun_buf,
          outfmt->sizeimage);
 if (ret)
  goto out_put_ipu;

 priv->ipu_buf_num = 0;


 init_completion(&priv->last_eof_comp);
 priv->frame_sequence = 0;
 priv->last_eof = 0;
 priv->nfb4eof = 0;

 ret = csi_idmac_setup(priv);
 if (ret) {
  v4l2_err(&priv->sd, "csi_idmac_setup failed: %d\n", ret);
  goto out_free_dma_buf;
 }

 priv->nfb4eof_irq = ipu_idmac_channel_irq(priv->ipu,
       priv->idmac_ch,
       IPU_IRQ_NFB4EOF);
 ret = devm_request_irq(priv->dev, priv->nfb4eof_irq,
          csi_idmac_nfb4eof_interrupt, 0,
          "imx-smfc-nfb4eof", priv);
 if (ret) {
  v4l2_err(&priv->sd,
    "Error registering NFB4EOF irq: %d\n", ret);
  goto out_unsetup;
 }

 priv->eof_irq = ipu_idmac_channel_irq(priv->ipu, priv->idmac_ch,
           IPU_IRQ_EOF);

 ret = devm_request_irq(priv->dev, priv->eof_irq,
          csi_idmac_eof_interrupt, 0,
          "imx-smfc-eof", priv);
 if (ret) {
  v4l2_err(&priv->sd,
    "Error registering eof irq: %d\n", ret);
  goto out_free_nfb4eof_irq;
 }


 mod_timer(&priv->eof_timeout_timer,
    jiffies + msecs_to_jiffies(IMX_MEDIA_EOF_TIMEOUT));

 return 0;

out_free_nfb4eof_irq:
 devm_free_irq(priv->dev, priv->nfb4eof_irq, priv);
out_unsetup:
 csi_idmac_unsetup(priv, VB2_BUF_STATE_QUEUED);
out_free_dma_buf:
 imx_media_free_dma_buf(priv->dev, &priv->underrun_buf);
out_put_ipu:
 csi_idmac_put_ipu_resources(priv);
 return ret;
}
