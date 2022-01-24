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
struct v4l2_subdev_frame_size_enum {scalar_t__ pad; int index; int min_width; int max_width; int min_height; int max_height; int /*<<< orphan*/  which; } ;
struct v4l2_subdev {int dummy; } ;
struct v4l2_rect {int width; int height; } ;
struct csi_priv {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 scalar_t__ CSI_NUM_PADS ; 
 scalar_t__ CSI_SINK_PAD ; 
 int EINVAL ; 
 int MAX_H ; 
 int MAX_W ; 
 int MIN_H ; 
 int MIN_W ; 
 struct v4l2_rect* FUNC0 (struct csi_priv*,struct v4l2_subdev_pad_config*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct csi_priv* FUNC3 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC4(struct v4l2_subdev *sd,
			       struct v4l2_subdev_pad_config *cfg,
			       struct v4l2_subdev_frame_size_enum *fse)
{
	struct csi_priv *priv = FUNC3(sd);
	struct v4l2_rect *crop;
	int ret = 0;

	if (fse->pad >= CSI_NUM_PADS ||
	    fse->index > (fse->pad == CSI_SINK_PAD ? 0 : 3))
		return -EINVAL;

	FUNC1(&priv->lock);

	if (fse->pad == CSI_SINK_PAD) {
		fse->min_width = MIN_W;
		fse->max_width = MAX_W;
		fse->min_height = MIN_H;
		fse->max_height = MAX_H;
	} else {
		crop = FUNC0(priv, cfg, fse->which);

		fse->min_width = fse->index & 1 ?
			crop->width / 2 : crop->width;
		fse->max_width = fse->min_width;
		fse->min_height = fse->index & 2 ?
			crop->height / 2 : crop->height;
		fse->max_height = fse->min_height;
	}

	FUNC2(&priv->lock);
	return ret;
}