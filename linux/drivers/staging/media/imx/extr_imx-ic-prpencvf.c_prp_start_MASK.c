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
struct prp_priv {int last_eof; int nfb4eof; int /*<<< orphan*/  underrun_buf; void* nfb4eof_irq; void* eof_irq; int /*<<< orphan*/  eof_timeout_timer; int /*<<< orphan*/  src_sd; int /*<<< orphan*/  out_ch; int /*<<< orphan*/  rot_out_ch; int /*<<< orphan*/  rot_mode; scalar_t__ frame_sequence; int /*<<< orphan*/  last_eof_comp; scalar_t__ ipu_buf_num; struct imx_media_video_dev* vdev; struct imx_ic_priv* ic_priv; } ;
struct TYPE_3__ {struct v4l2_pix_format pix; } ;
struct TYPE_4__ {TYPE_1__ fmt; } ;
struct imx_media_video_dev {TYPE_2__ fmt; } ;
struct imx_ic_priv {int /*<<< orphan*/  ipu_dev; int /*<<< orphan*/  sd; int /*<<< orphan*/  ipu; } ;

/* Variables and functions */
 int ENOIOCTLCMD ; 
 int /*<<< orphan*/  IMX_MEDIA_EOF_TIMEOUT ; 
 int /*<<< orphan*/  IPU_IRQ_EOF ; 
 int /*<<< orphan*/  IPU_IRQ_NFB4EOF ; 
 int /*<<< orphan*/  VB2_BUF_STATE_QUEUED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,void*,struct prp_priv*) ; 
 int FUNC1 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct prp_priv*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 void* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  prp_eof_interrupt ; 
 int FUNC9 (struct prp_priv*) ; 
 int /*<<< orphan*/  prp_nfb4eof_interrupt ; 
 int /*<<< orphan*/  FUNC10 (struct prp_priv*) ; 
 int FUNC11 (struct prp_priv*) ; 
 int FUNC12 (struct prp_priv*) ; 
 int /*<<< orphan*/  FUNC13 (struct prp_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  s_stream ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  video ; 

__attribute__((used)) static int FUNC16(struct prp_priv *priv)
{
	struct imx_ic_priv *ic_priv = priv->ic_priv;
	struct imx_media_video_dev *vdev = priv->vdev;
	struct v4l2_pix_format *outfmt;
	int ret;

	ret = FUNC9(priv);
	if (ret)
		return ret;

	outfmt = &vdev->fmt.fmt.pix;

	ret = FUNC2(ic_priv->ipu_dev, &priv->underrun_buf,
				      outfmt->sizeimage);
	if (ret)
		goto out_put_ipu;

	priv->ipu_buf_num = 0;

	/* init EOF completion waitq */
	FUNC4(&priv->last_eof_comp);
	priv->frame_sequence = 0;
	priv->last_eof = false;
	priv->nfb4eof = false;

	if (FUNC6(priv->rot_mode))
		ret = FUNC12(priv);
	else
		ret = FUNC11(priv);
	if (ret)
		goto out_free_underrun;

	priv->nfb4eof_irq = FUNC5(ic_priv->ipu,
						  priv->out_ch,
						  IPU_IRQ_NFB4EOF);
	ret = FUNC1(ic_priv->ipu_dev, priv->nfb4eof_irq,
			       prp_nfb4eof_interrupt, 0,
			       "imx-ic-prp-nfb4eof", priv);
	if (ret) {
		FUNC14(&ic_priv->sd,
			 "Error registering NFB4EOF irq: %d\n", ret);
		goto out_unsetup;
	}

	if (FUNC6(priv->rot_mode))
		priv->eof_irq = FUNC5(
			ic_priv->ipu, priv->rot_out_ch, IPU_IRQ_EOF);
	else
		priv->eof_irq = FUNC5(
			ic_priv->ipu, priv->out_ch, IPU_IRQ_EOF);

	ret = FUNC1(ic_priv->ipu_dev, priv->eof_irq,
			       prp_eof_interrupt, 0,
			       "imx-ic-prp-eof", priv);
	if (ret) {
		FUNC14(&ic_priv->sd,
			 "Error registering eof irq: %d\n", ret);
		goto out_free_nfb4eof_irq;
	}

	/* start upstream */
	ret = FUNC15(priv->src_sd, video, s_stream, 1);
	ret = (ret && ret != -ENOIOCTLCMD) ? ret : 0;
	if (ret) {
		FUNC14(&ic_priv->sd,
			 "upstream stream on failed: %d\n", ret);
		goto out_free_eof_irq;
	}

	/* start the EOF timeout timer */
	FUNC7(&priv->eof_timeout_timer,
		  jiffies + FUNC8(IMX_MEDIA_EOF_TIMEOUT));

	return 0;

out_free_eof_irq:
	FUNC0(ic_priv->ipu_dev, priv->eof_irq, priv);
out_free_nfb4eof_irq:
	FUNC0(ic_priv->ipu_dev, priv->nfb4eof_irq, priv);
out_unsetup:
	FUNC13(priv, VB2_BUF_STATE_QUEUED);
out_free_underrun:
	FUNC3(ic_priv->ipu_dev, &priv->underrun_buf);
out_put_ipu:
	FUNC10(priv);
	return ret;
}