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
struct v4l2_subdev {int dummy; } ;
struct device {int dummy; } ;
struct csi_state {int flags; int /*<<< orphan*/  lock; int /*<<< orphan*/  mipi_phy_regulator; } ;

/* Variables and functions */
 int EAGAIN ; 
 int ST_POWERED ; 
 int ST_STREAMING ; 
 int ST_SUSPENDED ; 
 struct v4l2_subdev* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct csi_state*) ; 
 int /*<<< orphan*/  FUNC2 (struct csi_state*) ; 
 struct csi_state* FUNC3 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct device *dev, bool runtime)
{
	struct v4l2_subdev *mipi_sd = FUNC0(dev);
	struct csi_state *state = FUNC3(mipi_sd);
	int ret = 0;

	FUNC4(&state->lock);
	if (!runtime && !(state->flags & ST_SUSPENDED))
		goto unlock;

	if (!(state->flags & ST_POWERED)) {
		ret = FUNC6(state->mipi_phy_regulator);
		if (ret)
			goto unlock;

		state->flags |= ST_POWERED;
		FUNC1(state);
	}
	if (state->flags & ST_STREAMING)
		FUNC2(state);

	state->flags &= ~ST_SUSPENDED;

unlock:
	FUNC5(&state->lock);

	return ret ? -EAGAIN : 0;
}