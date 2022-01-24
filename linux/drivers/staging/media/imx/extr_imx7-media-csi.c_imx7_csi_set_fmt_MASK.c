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
struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_mbus_framefmt {int dummy; } ;
struct v4l2_subdev_format {size_t pad; int /*<<< orphan*/  which; struct v4l2_mbus_framefmt format; } ;
struct v4l2_subdev {int dummy; } ;
struct imx_media_pixfmt {int dummy; } ;
struct imx7_csi {int /*<<< orphan*/  lock; struct imx_media_pixfmt const** cc; scalar_t__ is_streaming; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 size_t IMX7_CSI_PADS_NUM ; 
 size_t IMX7_CSI_PAD_SINK ; 
 size_t IMX7_CSI_PAD_SRC ; 
 int /*<<< orphan*/  V4L2_SUBDEV_FORMAT_ACTIVE ; 
 struct v4l2_mbus_framefmt* FUNC0 (struct imx7_csi*,struct v4l2_subdev_pad_config*,size_t,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct imx7_csi*,struct v4l2_subdev_pad_config*,struct v4l2_subdev_format*,struct imx_media_pixfmt const**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct imx7_csi* FUNC4 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC5(struct v4l2_subdev *sd,
			    struct v4l2_subdev_pad_config *cfg,
			    struct v4l2_subdev_format *sdformat)
{
	struct imx7_csi *csi = FUNC4(sd);
	const struct imx_media_pixfmt *outcc;
	struct v4l2_mbus_framefmt *outfmt;
	const struct imx_media_pixfmt *cc;
	struct v4l2_mbus_framefmt *fmt;
	struct v4l2_subdev_format format;
	int ret = 0;

	if (sdformat->pad >= IMX7_CSI_PADS_NUM)
		return -EINVAL;

	FUNC2(&csi->lock);

	if (csi->is_streaming) {
		ret = -EBUSY;
		goto out_unlock;
	}

	ret = FUNC1(csi, cfg, sdformat, &cc);
	if (ret < 0)
		goto out_unlock;

	fmt = FUNC0(csi, cfg, sdformat->pad, sdformat->which);
	if (!fmt) {
		ret = -EINVAL;
		goto out_unlock;
	}

	*fmt = sdformat->format;

	if (sdformat->pad == IMX7_CSI_PAD_SINK) {
		/* propagate format to source pads */
		format.pad = IMX7_CSI_PAD_SRC;
		format.which = sdformat->which;
		format.format = sdformat->format;
		if (FUNC1(csi, cfg, &format, &outcc)) {
			ret = -EINVAL;
			goto out_unlock;
		}
		outfmt = FUNC0(csi, cfg, IMX7_CSI_PAD_SRC,
					     sdformat->which);
		*outfmt = format.format;

		if (sdformat->which == V4L2_SUBDEV_FORMAT_ACTIVE)
			csi->cc[IMX7_CSI_PAD_SRC] = outcc;
	}

	if (sdformat->which == V4L2_SUBDEV_FORMAT_ACTIVE)
		csi->cc[sdformat->pad] = cc;

out_unlock:
	FUNC3(&csi->lock);

	return ret;
}