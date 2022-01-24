#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_subdev_mbus_code_enum {int pad; int /*<<< orphan*/  index; int /*<<< orphan*/  code; int /*<<< orphan*/  which; } ;
struct v4l2_subdev {int dummy; } ;
struct v4l2_mbus_framefmt {int /*<<< orphan*/  code; } ;
struct v4l2_fwnode_endpoint {int /*<<< orphan*/  bus_type; } ;
struct imx_media_pixfmt {int /*<<< orphan*/  cs; } ;
struct csi_priv {int /*<<< orphan*/  lock; int /*<<< orphan*/  sd; } ;

/* Variables and functions */
#define  CSI_SINK_PAD 130 
#define  CSI_SRC_PAD_DIRECT 129 
#define  CSI_SRC_PAD_IDMAC 128 
 int /*<<< orphan*/  CS_SEL_ANY ; 
 int /*<<< orphan*/  CS_SEL_RGB ; 
 int /*<<< orphan*/  CS_SEL_YUV ; 
 int EINVAL ; 
 int /*<<< orphan*/  IPUV3_COLORSPACE_YUV ; 
 struct v4l2_mbus_framefmt* FUNC0 (struct csi_priv*,struct v4l2_subdev_pad_config*,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct csi_priv*,struct v4l2_fwnode_endpoint*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct imx_media_pixfmt* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct v4l2_fwnode_endpoint*,struct v4l2_mbus_framefmt*,struct imx_media_pixfmt const*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*) ; 
 struct csi_priv* FUNC9 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC10(struct v4l2_subdev *sd,
			      struct v4l2_subdev_pad_config *cfg,
			      struct v4l2_subdev_mbus_code_enum *code)
{
	struct csi_priv *priv = FUNC9(sd);
	struct v4l2_fwnode_endpoint upstream_ep = { .bus_type = 0 };
	const struct imx_media_pixfmt *incc;
	struct v4l2_mbus_framefmt *infmt;
	int ret = 0;

	FUNC5(&priv->lock);

	infmt = FUNC0(priv, cfg, CSI_SINK_PAD, code->which);
	incc = FUNC4(infmt->code, CS_SEL_ANY, true);

	switch (code->pad) {
	case CSI_SINK_PAD:
		ret = FUNC3(&code->code, code->index,
						 CS_SEL_ANY, true);
		break;
	case CSI_SRC_PAD_DIRECT:
	case CSI_SRC_PAD_IDMAC:
		ret = FUNC1(priv, &upstream_ep);
		if (ret) {
			FUNC8(&priv->sd, "failed to find upstream endpoint\n");
			goto out;
		}

		if (FUNC7(&upstream_ep, infmt, incc)) {
			if (code->index != 0) {
				ret = -EINVAL;
				goto out;
			}
			code->code = infmt->code;
		} else {
			u32 cs_sel = (incc->cs == IPUV3_COLORSPACE_YUV) ?
				CS_SEL_YUV : CS_SEL_RGB;
			ret = FUNC2(&code->code,
							code->index,
							cs_sel);
		}
		break;
	default:
		ret = -EINVAL;
	}

out:
	FUNC6(&priv->lock);
	return ret;
}