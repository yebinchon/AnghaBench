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
struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_mbus_framefmt {int dummy; } ;
struct v4l2_subdev_format {struct v4l2_mbus_framefmt format; int /*<<< orphan*/  pad; int /*<<< orphan*/  which; } ;
struct v4l2_subdev {int dummy; } ;
struct csi_state {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 struct v4l2_mbus_framefmt* FUNC0 (struct csi_state*,struct v4l2_subdev_pad_config*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct csi_state* FUNC1 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct v4l2_subdev *mipi_sd,
			     struct v4l2_subdev_pad_config *cfg,
			     struct v4l2_subdev_format *sdformat)
{
	struct csi_state *state = FUNC1(mipi_sd);
	struct v4l2_mbus_framefmt *fmt;

	FUNC2(&state->lock);

	fmt = FUNC0(state, cfg, sdformat->which, sdformat->pad);

	sdformat->format = *fmt;

	FUNC3(&state->lock);

	return 0;
}