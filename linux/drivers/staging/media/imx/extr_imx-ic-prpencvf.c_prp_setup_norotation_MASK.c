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
struct v4l2_pix_format {int /*<<< orphan*/  height; int /*<<< orphan*/  width; int /*<<< orphan*/  quantization; int /*<<< orphan*/  ycbcr_enc; } ;
struct v4l2_mbus_framefmt {int /*<<< orphan*/  height; int /*<<< orphan*/  width; int /*<<< orphan*/  quantization; int /*<<< orphan*/  ycbcr_enc; } ;
struct prp_priv {int /*<<< orphan*/  ic; int /*<<< orphan*/  out_ch; int /*<<< orphan*/  rot_mode; struct imx_media_pixfmt** cc; struct v4l2_mbus_framefmt* format_mbus; struct imx_ic_priv* ic_priv; struct imx_media_video_dev* vdev; } ;
struct ipu_ic_csc {int dummy; } ;
struct TYPE_3__ {struct v4l2_pix_format pix; } ;
struct TYPE_4__ {TYPE_1__ fmt; } ;
struct imx_media_video_dev {struct imx_media_pixfmt* cc; TYPE_2__ fmt; } ;
struct imx_media_pixfmt {int /*<<< orphan*/  cs; } ;
struct imx_ic_priv {int /*<<< orphan*/  ipu; int /*<<< orphan*/  sd; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 size_t PRPENCVF_SINK_PAD ; 
 int /*<<< orphan*/  VB2_BUF_STATE_QUEUED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct ipu_ic_csc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,struct ipu_ic_csc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 
 int FUNC9 (struct prp_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (struct prp_priv*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct prp_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,char*,int) ; 

__attribute__((used)) static int FUNC13(struct prp_priv *priv)
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

	ret = FUNC2(&csc,
			      infmt->ycbcr_enc, infmt->quantization,
			      incc->cs,
			      outfmt->ycbcr_enc, outfmt->quantization,
			      outcc->cs);
	if (ret) {
		FUNC12(&ic_priv->sd, "ipu_ic_calc_csc failed, %d\n",
			 ret);
		return ret;
	}

	ret = FUNC6(priv->ic, &csc,
			       infmt->width, infmt->height,
			       outfmt->width, outfmt->height);
	if (ret) {
		FUNC12(&ic_priv->sd, "ipu_ic_task_init failed, %d\n", ret);
		return ret;
	}

	FUNC10(priv, phys);

	/* init the IC PRP-->MEM IDMAC channel */
	ret = FUNC9(priv, priv->out_ch, priv->rot_mode,
				phys[0], phys[1], false);
	if (ret) {
		FUNC12(&ic_priv->sd,
			 "prp_setup_channel(out_ch) failed, %d\n", ret);
		goto unsetup_vb2;
	}

	FUNC0(priv->out_ch);
	FUNC3(priv->ic);
	FUNC1(ic_priv->ipu);

	FUNC4(priv->ic);

	/* set buffers ready */
	FUNC8(priv->out_ch, 0);
	FUNC8(priv->out_ch, 1);

	/* enable the channels */
	FUNC7(priv->out_ch);

	/* enable the IC task */
	FUNC5(priv->ic);

	return 0;

unsetup_vb2:
	FUNC11(priv, VB2_BUF_STATE_QUEUED);
	return ret;
}