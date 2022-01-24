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
struct vdic_priv {scalar_t__ motion; int /*<<< orphan*/  lock; int /*<<< orphan*/  sd; scalar_t__ csi_direct; } ;
struct v4l2_subdev_format {int dummy; } ;
struct v4l2_subdev {int dummy; } ;
struct media_link {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ HIGH_MOTION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 struct vdic_priv* FUNC3 (struct v4l2_subdev*) ; 
 int FUNC4 (struct v4l2_subdev*,struct media_link*,struct v4l2_subdev_format*,struct v4l2_subdev_format*) ; 

__attribute__((used)) static int FUNC5(struct v4l2_subdev *sd,
			      struct media_link *link,
			      struct v4l2_subdev_format *source_fmt,
			      struct v4l2_subdev_format *sink_fmt)
{
	struct vdic_priv *priv = FUNC3(sd);
	int ret;

	ret = FUNC4(sd, link,
						source_fmt, sink_fmt);
	if (ret)
		return ret;

	FUNC0(&priv->lock);

	if (priv->csi_direct && priv->motion != HIGH_MOTION) {
		FUNC2(&priv->sd,
			 "direct CSI pipeline requires high motion\n");
		ret = -EINVAL;
	}

	FUNC1(&priv->lock);
	return ret;
}