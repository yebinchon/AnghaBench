#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct v4l2_subdev_pad_config {int dummy; } ;
struct TYPE_3__ {int height; int /*<<< orphan*/  field; int /*<<< orphan*/  width; int /*<<< orphan*/  code; int /*<<< orphan*/  xfer_func; int /*<<< orphan*/  colorspace; } ;
struct v4l2_subdev_format {int pad; TYPE_1__ format; int /*<<< orphan*/  which; } ;
struct v4l2_rect {int height; int /*<<< orphan*/  width; int /*<<< orphan*/  top; int /*<<< orphan*/  left; } ;
struct v4l2_mbus_framefmt {int /*<<< orphan*/  xfer_func; int /*<<< orphan*/  colorspace; int /*<<< orphan*/  code; } ;
struct v4l2_fwnode_endpoint {int dummy; } ;
struct imx_media_pixfmt {int /*<<< orphan*/ * codes; int /*<<< orphan*/  cs; } ;
struct csi_priv {int const active_output_pad; } ;

/* Variables and functions */
#define  CSI_SINK_PAD 130 
#define  CSI_SRC_PAD_DIRECT 129 
#define  CSI_SRC_PAD_IDMAC 128 
 int /*<<< orphan*/  CS_SEL_ANY ; 
 int /*<<< orphan*/  CS_SEL_RGB ; 
 int /*<<< orphan*/  CS_SEL_YUV ; 
 int /*<<< orphan*/  H_ALIGN ; 
 int /*<<< orphan*/  IPUV3_COLORSPACE_YUV ; 
 int /*<<< orphan*/  MAX_H ; 
 int /*<<< orphan*/  MAX_W ; 
 int /*<<< orphan*/  MIN_H ; 
 int /*<<< orphan*/  MIN_W ; 
 int /*<<< orphan*/  S_ALIGN ; 
 int /*<<< orphan*/  V4L2_FIELD_ALTERNATE ; 
 int /*<<< orphan*/  W_ALIGN ; 
 struct v4l2_mbus_framefmt* FUNC0 (struct csi_priv*,struct v4l2_subdev_pad_config*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct csi_priv*,struct v4l2_rect*,struct v4l2_subdev_pad_config*,TYPE_1__*,struct v4l2_fwnode_endpoint*) ; 
 int /*<<< orphan*/  FUNC2 (struct csi_priv*,struct v4l2_subdev_pad_config*,struct v4l2_subdev_format*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct imx_media_pixfmt* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct imx_media_pixfmt* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct v4l2_fwnode_endpoint*,struct v4l2_mbus_framefmt*,struct imx_media_pixfmt const*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(struct csi_priv *priv,
			struct v4l2_fwnode_endpoint *upstream_ep,
			struct v4l2_subdev_pad_config *cfg,
			struct v4l2_subdev_format *sdformat,
			struct v4l2_rect *crop,
			struct v4l2_rect *compose,
			const struct imx_media_pixfmt **cc)
{
	const struct imx_media_pixfmt *incc;
	struct v4l2_mbus_framefmt *infmt;
	u32 code;

	infmt = FUNC0(priv, cfg, CSI_SINK_PAD, sdformat->which);

	switch (sdformat->pad) {
	case CSI_SRC_PAD_DIRECT:
	case CSI_SRC_PAD_IDMAC:
		incc = FUNC6(infmt->code,
						  CS_SEL_ANY, true);

		sdformat->format.width = compose->width;
		sdformat->format.height = compose->height;

		if (FUNC8(upstream_ep, infmt, incc)) {
			sdformat->format.code = infmt->code;
			*cc = incc;
		} else {
			u32 cs_sel = (incc->cs == IPUV3_COLORSPACE_YUV) ?
				CS_SEL_YUV : CS_SEL_RGB;

			*cc = FUNC5(sdformat->format.code,
							cs_sel);
			if (!*cc) {
				FUNC3(&code, 0, cs_sel);
				*cc = FUNC5(code, cs_sel);
				sdformat->format.code = (*cc)->codes[0];
			}
		}

		FUNC2(priv, cfg, sdformat);

		/* propagate colorimetry from sink */
		sdformat->format.colorspace = infmt->colorspace;
		sdformat->format.xfer_func = infmt->xfer_func;

		break;
	case CSI_SINK_PAD:
		FUNC9(&sdformat->format.width, MIN_W, MAX_W,
				      W_ALIGN, &sdformat->format.height,
				      MIN_H, MAX_H, H_ALIGN, S_ALIGN);

		*cc = FUNC6(sdformat->format.code,
						 CS_SEL_ANY, true);
		if (!*cc) {
			FUNC4(&code, 0,
						   CS_SEL_ANY, false);
			*cc = FUNC6(code,
							CS_SEL_ANY, false);
			sdformat->format.code = (*cc)->codes[0];
		}

		FUNC2(priv, cfg, sdformat);

		/* Reset crop and compose rectangles */
		crop->left = 0;
		crop->top = 0;
		crop->width = sdformat->format.width;
		crop->height = sdformat->format.height;
		if (sdformat->format.field == V4L2_FIELD_ALTERNATE)
			crop->height *= 2;
		FUNC1(priv, crop, cfg, &sdformat->format, upstream_ep);
		compose->left = 0;
		compose->top = 0;
		compose->width = crop->width;
		compose->height = crop->height;

		break;
	}

	FUNC7(&sdformat->format,
			priv->active_output_pad == CSI_SRC_PAD_DIRECT);
}