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
struct csi_state {int flags; int /*<<< orphan*/  lock; scalar_t__ debug; } ;

/* Variables and functions */
 int ST_POWERED ; 
 int /*<<< orphan*/  FUNC0 (struct csi_state*) ; 
 int /*<<< orphan*/  FUNC1 (struct csi_state*,int) ; 
 struct csi_state* FUNC2 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct v4l2_subdev *mipi_sd)
{
	struct csi_state *state = FUNC2(mipi_sd);

	FUNC3(&state->lock);
	FUNC1(state, true);
	if (state->debug && (state->flags & ST_POWERED))
		FUNC0(state);
	FUNC4(&state->lock);

	return 0;
}