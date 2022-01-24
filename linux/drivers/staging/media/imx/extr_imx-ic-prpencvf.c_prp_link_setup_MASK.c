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
struct v4l2_subdev {int dummy; } ;
struct prp_priv {int /*<<< orphan*/  lock; struct media_entity* sink; struct v4l2_subdev* src_sd; } ;
struct media_pad {int flags; struct media_entity* entity; } ;
struct media_entity {int /*<<< orphan*/  name; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;
struct imx_ic_priv {TYPE_1__ sd; int /*<<< orphan*/  ipu_dev; struct prp_priv* task_priv; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int MEDIA_LNK_FL_ENABLED ; 
 int MEDIA_PAD_FL_SINK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct media_entity*) ; 
 int /*<<< orphan*/  FUNC2 (struct media_entity*) ; 
 struct v4l2_subdev* FUNC3 (struct media_entity*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct imx_ic_priv* FUNC6 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC7(struct media_entity *entity,
			  const struct media_pad *local,
			  const struct media_pad *remote, u32 flags)
{
	struct v4l2_subdev *sd = FUNC3(entity);
	struct imx_ic_priv *ic_priv = FUNC6(sd);
	struct prp_priv *priv = ic_priv->task_priv;
	struct v4l2_subdev *remote_sd;
	int ret = 0;

	FUNC0(ic_priv->ipu_dev, "%s: link setup %s -> %s",
		ic_priv->sd.name, remote->entity->name, local->entity->name);

	FUNC4(&priv->lock);

	if (local->flags & MEDIA_PAD_FL_SINK) {
		if (!FUNC1(remote->entity)) {
			ret = -EINVAL;
			goto out;
		}

		remote_sd = FUNC3(remote->entity);

		if (flags & MEDIA_LNK_FL_ENABLED) {
			if (priv->src_sd) {
				ret = -EBUSY;
				goto out;
			}
			priv->src_sd = remote_sd;
		} else {
			priv->src_sd = NULL;
		}

		goto out;
	}

	/* this is the source pad */

	/* the remote must be the device node */
	if (!FUNC2(remote->entity)) {
		ret = -EINVAL;
		goto out;
	}

	if (flags & MEDIA_LNK_FL_ENABLED) {
		if (priv->sink) {
			ret = -EBUSY;
			goto out;
		}
	} else {
		priv->sink = NULL;
		goto out;
	}

	priv->sink = remote->entity;
out:
	FUNC5(&priv->lock);
	return ret;
}