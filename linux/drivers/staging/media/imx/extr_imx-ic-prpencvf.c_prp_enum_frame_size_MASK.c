#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_subdev_frame_size_enum {scalar_t__ pad; scalar_t__ index; scalar_t__ code; int min_width; int min_height; int max_width; int max_height; int /*<<< orphan*/  which; } ;
struct TYPE_2__ {scalar_t__ code; int width; int height; } ;
struct v4l2_subdev_format {scalar_t__ pad; TYPE_1__ format; int /*<<< orphan*/  which; } ;
struct v4l2_subdev {int dummy; } ;
struct prp_priv {int /*<<< orphan*/  lock; } ;
struct imx_media_pixfmt {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ PRPENCVF_NUM_PADS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct prp_priv*,struct v4l2_subdev_pad_config*,struct v4l2_subdev_format*,struct imx_media_pixfmt const**) ; 
 struct prp_priv* FUNC3 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC4(struct v4l2_subdev *sd,
			       struct v4l2_subdev_pad_config *cfg,
			       struct v4l2_subdev_frame_size_enum *fse)
{
	struct prp_priv *priv = FUNC3(sd);
	struct v4l2_subdev_format format = {};
	const struct imx_media_pixfmt *cc;
	int ret = 0;

	if (fse->pad >= PRPENCVF_NUM_PADS || fse->index != 0)
		return -EINVAL;

	FUNC0(&priv->lock);

	format.pad = fse->pad;
	format.which = fse->which;
	format.format.code = fse->code;
	format.format.width = 1;
	format.format.height = 1;
	FUNC2(priv, cfg, &format, &cc);
	fse->min_width = format.format.width;
	fse->min_height = format.format.height;

	if (format.format.code != fse->code) {
		ret = -EINVAL;
		goto out;
	}

	format.format.code = fse->code;
	format.format.width = -1;
	format.format.height = -1;
	FUNC2(priv, cfg, &format, &cc);
	fse->max_width = format.format.width;
	fse->max_height = format.format.height;
out:
	FUNC1(&priv->lock);
	return ret;
}