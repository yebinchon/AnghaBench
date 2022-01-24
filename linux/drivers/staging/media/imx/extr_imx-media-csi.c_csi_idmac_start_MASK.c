#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct v4l2_pix_format {int /*<<< orphan*/  sizeimage; } ;
struct TYPE_3__ {struct v4l2_pix_format pix; } ;
struct TYPE_4__ {TYPE_1__ fmt; } ;
struct imx_media_video_dev {TYPE_2__ fmt; } ;
struct csi_priv {int last_eof; int nfb4eof; int /*<<< orphan*/  underrun_buf; int /*<<< orphan*/  dev; void* nfb4eof_irq; int /*<<< orphan*/  eof_timeout_timer; int /*<<< orphan*/  sd; void* eof_irq; int /*<<< orphan*/  idmac_ch; int /*<<< orphan*/  ipu; scalar_t__ frame_sequence; int /*<<< orphan*/  last_eof_comp; scalar_t__ ipu_buf_num; int /*<<< orphan*/  vc_num; int /*<<< orphan*/  csi_id; int /*<<< orphan*/  smfc; struct imx_media_video_dev* vdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  IMX_MEDIA_EOF_TIMEOUT ; 
 int /*<<< orphan*/  IPU_IRQ_EOF ; 
 int /*<<< orphan*/  IPU_IRQ_NFB4EOF ; 
 int /*<<< orphan*/  VB2_BUF_STATE_QUEUED ; 
 int /*<<< orphan*/  csi_idmac_eof_interrupt ; 
 int FUNC0 (struct csi_priv*) ; 
 int /*<<< orphan*/  csi_idmac_nfb4eof_interrupt ; 
 int /*<<< orphan*/  FUNC1 (struct csi_priv*) ; 
 int FUNC2 (struct csi_priv*) ; 
 int /*<<< orphan*/  FUNC3 (struct csi_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,void*,struct csi_priv*) ; 
 int FUNC5 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct csi_priv*) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 void* FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,char*,int) ; 

__attribute__((used)) static int FUNC14(struct csi_priv *priv)
{
	struct imx_media_video_dev *vdev = priv->vdev;
	struct v4l2_pix_format *outfmt;
	int ret;

	ret = FUNC0(priv);
	if (ret)
		return ret;

	FUNC10(priv->smfc, priv->csi_id, priv->vc_num);

	outfmt = &vdev->fmt.fmt.pix;

	ret = FUNC6(priv->dev, &priv->underrun_buf,
				      outfmt->sizeimage);
	if (ret)
		goto out_put_ipu;

	priv->ipu_buf_num = 0;

	/* init EOF completion waitq */
	FUNC8(&priv->last_eof_comp);
	priv->frame_sequence = 0;
	priv->last_eof = false;
	priv->nfb4eof = false;

	ret = FUNC2(priv);
	if (ret) {
		FUNC13(&priv->sd, "csi_idmac_setup failed: %d\n", ret);
		goto out_free_dma_buf;
	}

	priv->nfb4eof_irq = FUNC9(priv->ipu,
						 priv->idmac_ch,
						 IPU_IRQ_NFB4EOF);
	ret = FUNC5(priv->dev, priv->nfb4eof_irq,
			       csi_idmac_nfb4eof_interrupt, 0,
			       "imx-smfc-nfb4eof", priv);
	if (ret) {
		FUNC13(&priv->sd,
			 "Error registering NFB4EOF irq: %d\n", ret);
		goto out_unsetup;
	}

	priv->eof_irq = FUNC9(priv->ipu, priv->idmac_ch,
					      IPU_IRQ_EOF);

	ret = FUNC5(priv->dev, priv->eof_irq,
			       csi_idmac_eof_interrupt, 0,
			       "imx-smfc-eof", priv);
	if (ret) {
		FUNC13(&priv->sd,
			 "Error registering eof irq: %d\n", ret);
		goto out_free_nfb4eof_irq;
	}

	/* start the EOF timeout timer */
	FUNC11(&priv->eof_timeout_timer,
		  jiffies + FUNC12(IMX_MEDIA_EOF_TIMEOUT));

	return 0;

out_free_nfb4eof_irq:
	FUNC4(priv->dev, priv->nfb4eof_irq, priv);
out_unsetup:
	FUNC3(priv, VB2_BUF_STATE_QUEUED);
out_free_dma_buf:
	FUNC7(priv->dev, &priv->underrun_buf);
out_put_ipu:
	FUNC1(priv);
	return ret;
}