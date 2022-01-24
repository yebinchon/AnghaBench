#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct v4l2_pix_format {int /*<<< orphan*/  width; int /*<<< orphan*/  height; int /*<<< orphan*/  sizeimage; int /*<<< orphan*/  quantization; int /*<<< orphan*/  ycbcr_enc; } ;
struct v4l2_mbus_framefmt {int /*<<< orphan*/  height; int /*<<< orphan*/  width; int /*<<< orphan*/  quantization; int /*<<< orphan*/  ycbcr_enc; } ;
struct prp_priv {TYPE_3__* rot_buf; int /*<<< orphan*/  ic; int /*<<< orphan*/  rot_out_ch; int /*<<< orphan*/  rot_in_ch; int /*<<< orphan*/  out_ch; int /*<<< orphan*/  rot_mode; struct imx_media_pixfmt** cc; struct v4l2_mbus_framefmt* format_mbus; struct imx_ic_priv* ic_priv; struct imx_media_video_dev* vdev; } ;
struct ipu_ic_csc {int dummy; } ;
struct TYPE_5__ {struct v4l2_pix_format pix; } ;
struct TYPE_6__ {TYPE_1__ fmt; } ;
struct imx_media_video_dev {struct imx_media_pixfmt* cc; TYPE_2__ fmt; } ;
struct imx_media_pixfmt {int /*<<< orphan*/  cs; } ;
struct imx_ic_priv {int /*<<< orphan*/  ipu_dev; int /*<<< orphan*/  sd; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_7__ {int /*<<< orphan*/  phys; } ;

/* Variables and functions */
 int /*<<< orphan*/  IPU_ROTATE_NONE ; 
 size_t PRPENCVF_SINK_PAD ; 
 int /*<<< orphan*/  VB2_BUF_STATE_QUEUED ; 
 int FUNC0 (int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int FUNC2 (struct ipu_ic_csc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,struct ipu_ic_csc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
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

	ret = FUNC0(ic_priv->ipu_dev, &priv->rot_buf[0],
				      outfmt->sizeimage);
	if (ret) {
		FUNC12(&ic_priv->sd, "failed to alloc rot_buf[0], %d\n", ret);
		return ret;
	}
	ret = FUNC0(ic_priv->ipu_dev, &priv->rot_buf[1],
				      outfmt->sizeimage);
	if (ret) {
		FUNC12(&ic_priv->sd, "failed to alloc rot_buf[1], %d\n", ret);
		goto free_rot0;
	}

	ret = FUNC5(priv->ic, &csc,
			       infmt->width, infmt->height,
			       outfmt->height, outfmt->width);
	if (ret) {
		FUNC12(&ic_priv->sd, "ipu_ic_task_init failed, %d\n", ret);
		goto free_rot1;
	}

	/* init the IC-PRP-->MEM IDMAC channel */
	ret = FUNC9(priv, priv->out_ch, IPU_ROTATE_NONE,
				priv->rot_buf[0].phys, priv->rot_buf[1].phys,
				true);
	if (ret) {
		FUNC12(&ic_priv->sd,
			 "prp_setup_channel(out_ch) failed, %d\n", ret);
		goto free_rot1;
	}

	/* init the MEM-->IC-PRP ROT IDMAC channel */
	ret = FUNC9(priv, priv->rot_in_ch, priv->rot_mode,
				priv->rot_buf[0].phys, priv->rot_buf[1].phys,
				true);
	if (ret) {
		FUNC12(&ic_priv->sd,
			 "prp_setup_channel(rot_in_ch) failed, %d\n", ret);
		goto free_rot1;
	}

	FUNC10(priv, phys);

	/* init the destination IC-PRP ROT-->MEM IDMAC channel */
	ret = FUNC9(priv, priv->rot_out_ch, IPU_ROTATE_NONE,
				phys[0], phys[1],
				false);
	if (ret) {
		FUNC12(&ic_priv->sd,
			 "prp_setup_channel(rot_out_ch) failed, %d\n", ret);
		goto unsetup_vb2;
	}

	/* now link IC-PRP-->MEM to MEM-->IC-PRP ROT */
	FUNC7(priv->out_ch, priv->rot_in_ch);

	/* enable the IC */
	FUNC3(priv->ic);

	/* set buffers ready */
	FUNC8(priv->out_ch, 0);
	FUNC8(priv->out_ch, 1);
	FUNC8(priv->rot_out_ch, 0);
	FUNC8(priv->rot_out_ch, 1);

	/* enable the channels */
	FUNC6(priv->out_ch);
	FUNC6(priv->rot_in_ch);
	FUNC6(priv->rot_out_ch);

	/* and finally enable the IC PRP task */
	FUNC4(priv->ic);

	return 0;

unsetup_vb2:
	FUNC11(priv, VB2_BUF_STATE_QUEUED);
free_rot1:
	FUNC1(ic_priv->ipu_dev, &priv->rot_buf[1]);
free_rot0:
	FUNC1(ic_priv->ipu_dev, &priv->rot_buf[0]);
	return ret;
}