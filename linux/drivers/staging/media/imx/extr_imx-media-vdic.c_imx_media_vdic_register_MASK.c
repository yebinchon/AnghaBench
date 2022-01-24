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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_3__ {int /*<<< orphan*/  function; int /*<<< orphan*/ * ops; } ;
struct v4l2_subdev {int /*<<< orphan*/  grp_id; int /*<<< orphan*/  name; int /*<<< orphan*/  flags; int /*<<< orphan*/  owner; TYPE_1__ entity; int /*<<< orphan*/ * internal_ops; } ;
struct vdic_priv {int /*<<< orphan*/  lock; struct v4l2_subdev sd; struct ipu_soc* ipu; struct device* ipu_dev; } ;
struct v4l2_device {int dummy; } ;
struct ipu_soc {int dummy; } ;
struct device {TYPE_2__* driver; } ;
struct TYPE_4__ {int /*<<< orphan*/  owner; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct v4l2_subdev* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MEDIA_ENT_F_PROC_VIDEO_PIXEL_FORMATTER ; 
 int /*<<< orphan*/  V4L2_SUBDEV_FL_HAS_DEVNODE ; 
 struct vdic_priv* FUNC1 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ipu_soc*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (struct v4l2_device*,struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC7 (struct v4l2_subdev*,struct vdic_priv*) ; 
 int /*<<< orphan*/  FUNC8 (struct v4l2_subdev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  vdic_entity_ops ; 
 int /*<<< orphan*/  vdic_internal_ops ; 
 int /*<<< orphan*/  vdic_subdev_ops ; 

struct v4l2_subdev *FUNC9(struct v4l2_device *v4l2_dev,
					    struct device *ipu_dev,
					    struct ipu_soc *ipu,
					    u32 grp_id)
{
	struct vdic_priv *priv;
	int ret;

	priv = FUNC1(ipu_dev, sizeof(*priv), GFP_KERNEL);
	if (!priv)
		return FUNC0(-ENOMEM);

	priv->ipu_dev = ipu_dev;
	priv->ipu = ipu;

	FUNC8(&priv->sd, &vdic_subdev_ops);
	FUNC7(&priv->sd, priv);
	priv->sd.internal_ops = &vdic_internal_ops;
	priv->sd.entity.ops = &vdic_entity_ops;
	priv->sd.entity.function = MEDIA_ENT_F_PROC_VIDEO_PIXEL_FORMATTER;
	priv->sd.owner = ipu_dev->driver->owner;
	priv->sd.flags = V4L2_SUBDEV_FL_HAS_DEVNODE;
	priv->sd.grp_id = grp_id;
	FUNC2(priv->sd.name, sizeof(priv->sd.name),
				    priv->sd.grp_id, FUNC3(ipu));

	FUNC5(&priv->lock);

	ret = FUNC6(v4l2_dev, &priv->sd);
	if (ret)
		goto free;

	return &priv->sd;
free:
	FUNC4(&priv->lock);
	return FUNC0(ret);
}