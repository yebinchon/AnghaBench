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
struct csi_state {int sink_linked; int /*<<< orphan*/  lock; struct v4l2_subdev* src_sd; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EBUSY ; 
 int MEDIA_LNK_FL_ENABLED ; 
 int MEDIA_PAD_FL_SOURCE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct v4l2_subdev* FUNC1 (struct media_entity*) ; 
 struct csi_state* FUNC2 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct media_entity *entity,
				const struct media_pad *local_pad,
				const struct media_pad *remote_pad, u32 flags)
{
	struct v4l2_subdev *mipi_sd = FUNC1(entity);
	struct csi_state *state = FUNC2(mipi_sd);
	struct v4l2_subdev *remote_sd;
	int ret = 0;

	FUNC0(state->dev, "link setup %s -> %s", remote_pad->entity->name,
		local_pad->entity->name);

	remote_sd = FUNC1(remote_pad->entity);

	FUNC3(&state->lock);

	if (local_pad->flags & MEDIA_PAD_FL_SOURCE) {
		if (flags & MEDIA_LNK_FL_ENABLED) {
			if (state->sink_linked) {
				ret = -EBUSY;
				goto out;
			}
			state->sink_linked = true;
		} else {
			state->sink_linked = false;
		}
	} else {
		if (flags & MEDIA_LNK_FL_ENABLED) {
			if (state->src_sd) {
				ret = -EBUSY;
				goto out;
			}
			state->src_sd = remote_sd;
		} else {
			state->src_sd = NULL;
		}
	}

out:
	FUNC4(&state->lock);
	return ret;
}