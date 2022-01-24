#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_4__ {int /*<<< orphan*/  function; int /*<<< orphan*/  ops; } ;
struct v4l2_subdev {int flags; int grp_id; int /*<<< orphan*/  name; int /*<<< orphan*/  owner; TYPE_1__ entity; int /*<<< orphan*/  internal_ops; } ;
struct v4l2_device {int dummy; } ;
struct ipu_soc {int dummy; } ;
struct imx_ic_priv {size_t task_id; struct v4l2_subdev sd; struct ipu_soc* ipu; struct device* ipu_dev; } ;
struct device {TYPE_2__* driver; } ;
struct TYPE_6__ {int (* init ) (struct imx_ic_priv*) ;int /*<<< orphan*/  (* remove ) (struct imx_ic_priv*) ;int /*<<< orphan*/  entity_ops; int /*<<< orphan*/  internal_ops; int /*<<< orphan*/  subdev_ops; } ;
struct TYPE_5__ {int /*<<< orphan*/  owner; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 struct v4l2_subdev* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 size_t IC_TASK_ENCODER ; 
 size_t IC_TASK_PRP ; 
 size_t IC_TASK_VIEWFINDER ; 
#define  IMX_MEDIA_GRP_ID_IPU_IC_PRP 130 
#define  IMX_MEDIA_GRP_ID_IPU_IC_PRPENC 129 
#define  IMX_MEDIA_GRP_ID_IPU_IC_PRPVF 128 
 int /*<<< orphan*/  MEDIA_ENT_F_PROC_VIDEO_SCALER ; 
 int V4L2_SUBDEV_FL_HAS_DEVNODE ; 
 int V4L2_SUBDEV_FL_HAS_EVENTS ; 
 struct imx_ic_priv* FUNC1 (struct device*,int,int /*<<< orphan*/ ) ; 
 TYPE_3__** ic_ops ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ipu_soc*) ; 
 int FUNC4 (struct imx_ic_priv*) ; 
 int /*<<< orphan*/  FUNC5 (struct imx_ic_priv*) ; 
 int FUNC6 (struct v4l2_device*,struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC7 (struct v4l2_subdev*,struct imx_ic_priv*) ; 
 int /*<<< orphan*/  FUNC8 (struct v4l2_subdev*,int /*<<< orphan*/ ) ; 

struct v4l2_subdev *FUNC9(struct v4l2_device *v4l2_dev,
					  struct device *ipu_dev,
					  struct ipu_soc *ipu,
					  u32 grp_id)
{
	struct imx_ic_priv *priv;
	int ret;

	priv = FUNC1(ipu_dev, sizeof(*priv), GFP_KERNEL);
	if (!priv)
		return FUNC0(-ENOMEM);

	priv->ipu_dev = ipu_dev;
	priv->ipu = ipu;

	/* get our IC task id */
	switch (grp_id) {
	case IMX_MEDIA_GRP_ID_IPU_IC_PRP:
		priv->task_id = IC_TASK_PRP;
		break;
	case IMX_MEDIA_GRP_ID_IPU_IC_PRPENC:
		priv->task_id = IC_TASK_ENCODER;
		break;
	case IMX_MEDIA_GRP_ID_IPU_IC_PRPVF:
		priv->task_id = IC_TASK_VIEWFINDER;
		break;
	default:
		return FUNC0(-EINVAL);
	}

	FUNC8(&priv->sd, ic_ops[priv->task_id]->subdev_ops);
	FUNC7(&priv->sd, priv);
	priv->sd.internal_ops = ic_ops[priv->task_id]->internal_ops;
	priv->sd.entity.ops = ic_ops[priv->task_id]->entity_ops;
	priv->sd.entity.function = MEDIA_ENT_F_PROC_VIDEO_SCALER;
	priv->sd.owner = ipu_dev->driver->owner;
	priv->sd.flags = V4L2_SUBDEV_FL_HAS_DEVNODE | V4L2_SUBDEV_FL_HAS_EVENTS;
	priv->sd.grp_id = grp_id;
	FUNC2(priv->sd.name, sizeof(priv->sd.name),
				    priv->sd.grp_id, FUNC3(ipu));

	ret = ic_ops[priv->task_id]->init(priv);
	if (ret)
		return FUNC0(ret);

	ret = FUNC6(v4l2_dev, &priv->sd);
	if (ret) {
		ic_ops[priv->task_id]->remove(priv);
		return FUNC0(ret);
	}

	return &priv->sd;
}