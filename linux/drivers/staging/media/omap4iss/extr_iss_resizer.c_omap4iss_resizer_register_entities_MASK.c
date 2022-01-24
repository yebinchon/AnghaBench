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
struct v4l2_device {int dummy; } ;
struct iss_resizer_device {int /*<<< orphan*/  video_out; int /*<<< orphan*/  subdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct iss_resizer_device*) ; 
 int FUNC1 (int /*<<< orphan*/ *,struct v4l2_device*) ; 
 int FUNC2 (struct v4l2_device*,int /*<<< orphan*/ *) ; 

int FUNC3(struct iss_resizer_device *resizer,
				       struct v4l2_device *vdev)
{
	int ret;

	/* Register the subdev and video node. */
	ret = FUNC2(vdev, &resizer->subdev);
	if (ret < 0)
		goto error;

	ret = FUNC1(&resizer->video_out, vdev);
	if (ret < 0)
		goto error;

	return 0;

error:
	FUNC0(resizer);
	return ret;
}