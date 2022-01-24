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
struct v4l2_subdev {int dummy; } ;
struct csi_state {int flags; TYPE_1__* pdev; int /*<<< orphan*/  lock; scalar_t__ debug; int /*<<< orphan*/  src_sd; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EBUSY ; 
 int ST_STREAMING ; 
 int ST_SUSPENDED ; 
 int /*<<< orphan*/  core ; 
 int /*<<< orphan*/  FUNC0 (struct csi_state*) ; 
 int /*<<< orphan*/  FUNC1 (struct csi_state*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct csi_state*) ; 
 int /*<<< orphan*/  FUNC3 (struct csi_state*) ; 
 struct csi_state* FUNC4 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  s_power ; 
 int /*<<< orphan*/  s_stream ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  video ; 

__attribute__((used)) static int FUNC11(struct v4l2_subdev *mipi_sd, int enable)
{
	struct csi_state *state = FUNC4(mipi_sd);
	int ret = 0;

	if (enable) {
		FUNC0(state);
		ret = FUNC7(&state->pdev->dev);
		if (ret < 0) {
			FUNC9(&state->pdev->dev);
			return ret;
		}
		ret = FUNC10(state->src_sd, core, s_power, 1);
		if (ret < 0)
			return ret;
	}

	FUNC5(&state->lock);
	if (enable) {
		if (state->flags & ST_SUSPENDED) {
			ret = -EBUSY;
			goto unlock;
		}

		FUNC2(state);
		ret = FUNC10(state->src_sd, video, s_stream, 1);
		if (ret < 0)
			goto unlock;

		FUNC1(state, true);

		state->flags |= ST_STREAMING;
	} else {
		FUNC10(state->src_sd, video, s_stream, 0);
		ret = FUNC10(state->src_sd, core, s_power, 1);
		FUNC3(state);
		state->flags &= ~ST_STREAMING;
		if (state->debug)
			FUNC1(state, true);
	}

unlock:
	FUNC6(&state->lock);
	if (!enable)
		FUNC8(&state->pdev->dev);

	return ret;
}