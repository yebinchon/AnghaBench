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
typedef  int u32 ;
struct v4l2_subdev {int grp_id; } ;
struct prp_priv {int /*<<< orphan*/  lock; struct v4l2_subdev* sink_sd_prpvf; struct v4l2_subdev* sink_sd_prpenc; struct v4l2_subdev* src_sd; } ;
struct media_pad {int flags; int index; struct media_entity* entity; } ;
struct media_entity {int /*<<< orphan*/  name; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;
struct imx_ic_priv {TYPE_1__ sd; int /*<<< orphan*/  ipu_dev; struct prp_priv* task_priv; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int IMX_MEDIA_GRP_ID_IPU_VDIC ; 
 int MEDIA_LNK_FL_ENABLED ; 
 int MEDIA_PAD_FL_SINK ; 
#define  PRP_SRC_PAD_PRPENC 129 
#define  PRP_SRC_PAD_PRPVF 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct v4l2_subdev* FUNC1 (struct media_entity*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct imx_ic_priv* FUNC4 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC5(struct media_entity *entity,
			  const struct media_pad *local,
			  const struct media_pad *remote, u32 flags)
{
	struct v4l2_subdev *sd = FUNC1(entity);
	struct imx_ic_priv *ic_priv = FUNC4(sd);
	struct prp_priv *priv = ic_priv->task_priv;
	struct v4l2_subdev *remote_sd;
	int ret = 0;

	FUNC0(ic_priv->ipu_dev, "%s: link setup %s -> %s",
		ic_priv->sd.name, remote->entity->name, local->entity->name);

	remote_sd = FUNC1(remote->entity);

	FUNC2(&priv->lock);

	if (local->flags & MEDIA_PAD_FL_SINK) {
		if (flags & MEDIA_LNK_FL_ENABLED) {
			if (priv->src_sd) {
				ret = -EBUSY;
				goto out;
			}
			if (priv->sink_sd_prpenc &&
			    (remote_sd->grp_id & IMX_MEDIA_GRP_ID_IPU_VDIC)) {
				ret = -EINVAL;
				goto out;
			}
			priv->src_sd = remote_sd;
		} else {
			priv->src_sd = NULL;
		}

		goto out;
	}

	/* this is a source pad */
	if (flags & MEDIA_LNK_FL_ENABLED) {
		switch (local->index) {
		case PRP_SRC_PAD_PRPENC:
			if (priv->sink_sd_prpenc) {
				ret = -EBUSY;
				goto out;
			}
			if (priv->src_sd && (priv->src_sd->grp_id &
					     IMX_MEDIA_GRP_ID_IPU_VDIC)) {
				ret = -EINVAL;
				goto out;
			}
			priv->sink_sd_prpenc = remote_sd;
			break;
		case PRP_SRC_PAD_PRPVF:
			if (priv->sink_sd_prpvf) {
				ret = -EBUSY;
				goto out;
			}
			priv->sink_sd_prpvf = remote_sd;
			break;
		default:
			ret = -EINVAL;
		}
	} else {
		switch (local->index) {
		case PRP_SRC_PAD_PRPENC:
			priv->sink_sd_prpenc = NULL;
			break;
		case PRP_SRC_PAD_PRPVF:
			priv->sink_sd_prpvf = NULL;
			break;
		default:
			ret = -EINVAL;
		}
	}

out:
	FUNC3(&priv->lock);
	return ret;
}