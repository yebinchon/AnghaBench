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
struct v4l2_mbus_framefmt {int /*<<< orphan*/  field; int /*<<< orphan*/  code; int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;
struct v4l2_subdev_format {int pad; struct v4l2_mbus_framefmt format; int /*<<< orphan*/  which; } ;
struct v4l2_subdev {int dummy; } ;
struct prp_priv {scalar_t__ stream_count; int /*<<< orphan*/  lock; } ;
struct imx_media_pixfmt {int /*<<< orphan*/ * codes; } ;

/* Variables and functions */
 int /*<<< orphan*/  CS_SEL_ANY ; 
 int EBUSY ; 
 int EINVAL ; 
 int /*<<< orphan*/  H_ALIGN ; 
 int /*<<< orphan*/  MAX_H ; 
 int /*<<< orphan*/  MAX_W ; 
 int /*<<< orphan*/  MIN_H ; 
 int /*<<< orphan*/  MIN_W ; 
 int PRP_NUM_PADS ; 
#define  PRP_SINK_PAD 130 
#define  PRP_SRC_PAD_PRPENC 129 
#define  PRP_SRC_PAD_PRPVF 128 
 int /*<<< orphan*/  S_ALIGN ; 
 int /*<<< orphan*/  V4L2_FIELD_ANY ; 
 int /*<<< orphan*/  V4L2_FIELD_NONE ; 
 int /*<<< orphan*/  W_ALIGN ; 
 struct v4l2_mbus_framefmt* FUNC0 (struct prp_priv*,struct v4l2_subdev_pad_config*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct imx_media_pixfmt* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct v4l2_mbus_framefmt*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct prp_priv* FUNC6 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct v4l2_subdev *sd,
		       struct v4l2_subdev_pad_config *cfg,
		       struct v4l2_subdev_format *sdformat)
{
	struct prp_priv *priv = FUNC6(sd);
	struct v4l2_mbus_framefmt *fmt, *infmt;
	const struct imx_media_pixfmt *cc;
	int ret = 0;
	u32 code;

	if (sdformat->pad >= PRP_NUM_PADS)
		return -EINVAL;

	FUNC4(&priv->lock);

	if (priv->stream_count > 0) {
		ret = -EBUSY;
		goto out;
	}

	infmt = FUNC0(priv, cfg, PRP_SINK_PAD, sdformat->which);

	switch (sdformat->pad) {
	case PRP_SINK_PAD:
		FUNC7(&sdformat->format.width, MIN_W, MAX_W,
				      W_ALIGN, &sdformat->format.height,
				      MIN_H, MAX_H, H_ALIGN, S_ALIGN);

		cc = FUNC2(sdformat->format.code,
					       CS_SEL_ANY);
		if (!cc) {
			FUNC1(&code, 0, CS_SEL_ANY);
			cc = FUNC2(code, CS_SEL_ANY);
			sdformat->format.code = cc->codes[0];
		}

		if (sdformat->format.field == V4L2_FIELD_ANY)
			sdformat->format.field = V4L2_FIELD_NONE;
		break;
	case PRP_SRC_PAD_PRPENC:
	case PRP_SRC_PAD_PRPVF:
		/* Output pads mirror input pad */
		sdformat->format = *infmt;
		break;
	}

	FUNC3(&sdformat->format, true);

	fmt = FUNC0(priv, cfg, sdformat->pad, sdformat->which);
	*fmt = sdformat->format;
out:
	FUNC5(&priv->lock);
	return ret;
}