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
typedef  int u32 ;
struct v4l2_subdev {int dummy; } ;
struct media_pad {int flags; struct media_entity* entity; } ;
struct media_entity {int /*<<< orphan*/  name; } ;
struct imx7_csi {int /*<<< orphan*/  lock; struct v4l2_subdev* src_sd; struct media_entity* sink; int /*<<< orphan*/  ctrl_hdlr; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int MEDIA_LNK_FL_ENABLED ; 
 int MEDIA_PAD_FL_SINK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct imx7_csi*) ; 
 int FUNC2 (struct imx7_csi*) ; 
 int /*<<< orphan*/  FUNC3 (struct media_entity*) ; 
 struct v4l2_subdev* FUNC4 (struct media_entity*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct imx7_csi* FUNC9 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC10(struct media_entity *entity,
			       const struct media_pad *local,
			       const struct media_pad *remote, u32 flags)
{
	struct v4l2_subdev *sd = FUNC4(entity);
	struct imx7_csi *csi = FUNC9(sd);
	struct v4l2_subdev *remote_sd;
	int ret = 0;

	FUNC0(csi->dev, "link setup %s -> %s\n", remote->entity->name,
		local->entity->name);

	FUNC5(&csi->lock);

	if (local->flags & MEDIA_PAD_FL_SINK) {
		if (!FUNC3(remote->entity)) {
			ret = -EINVAL;
			goto unlock;
		}

		remote_sd = FUNC4(remote->entity);

		if (flags & MEDIA_LNK_FL_ENABLED) {
			if (csi->src_sd) {
				ret = -EBUSY;
				goto unlock;
			}
			csi->src_sd = remote_sd;
		} else {
			csi->src_sd = NULL;
		}

		goto init;
	}

	/* source pad */
	if (flags & MEDIA_LNK_FL_ENABLED) {
		if (csi->sink) {
			ret = -EBUSY;
			goto unlock;
		}
		csi->sink = remote->entity;
	} else {
		FUNC7(&csi->ctrl_hdlr);
		FUNC8(&csi->ctrl_hdlr, 0);
		csi->sink = NULL;
	}

init:
	if (csi->sink || csi->src_sd)
		ret = FUNC2(csi);
	else
		FUNC1(csi);

unlock:
	FUNC6(&csi->lock);

	return ret;
}