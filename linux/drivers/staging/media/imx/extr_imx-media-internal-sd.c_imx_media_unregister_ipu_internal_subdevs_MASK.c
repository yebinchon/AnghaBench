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
struct internal_subdev {int /*<<< orphan*/  (* sync_unregister ) (struct v4l2_subdev*) ;} ;
struct imx_media_dev {int /*<<< orphan*/  mutex; struct v4l2_subdev*** sync_sd; } ;

/* Variables and functions */
 int NUM_IPU_SUBDEVS ; 
 struct internal_subdev* int_subdev ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct v4l2_subdev*) ; 

void FUNC3(struct imx_media_dev *imxmd)
{
	const struct internal_subdev *intsd;
	struct v4l2_subdev *sd;
	int i, j;

	FUNC0(&imxmd->mutex);

	for (i = 0; i < 2; i++) {
		for (j = 0; j < NUM_IPU_SUBDEVS; j++) {
			intsd = &int_subdev[j];
			sd = imxmd->sync_sd[i][j];

			if (!sd || !intsd->sync_unregister)
				continue;

			FUNC1(&imxmd->mutex);
			intsd->sync_unregister(sd);
			FUNC0(&imxmd->mutex);
		}
	}

	FUNC1(&imxmd->mutex);
}