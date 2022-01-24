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
typedef  int /*<<< orphan*/  u32 ;
struct v4l2_mbus_framefmt {int dummy; } ;
struct v4l2_subdev_format {struct v4l2_mbus_framefmt format; int /*<<< orphan*/  which; int /*<<< orphan*/  pad; } ;
struct v4l2_subdev {int dummy; } ;
struct iss_video {int /*<<< orphan*/  mutex; } ;
typedef  int /*<<< orphan*/  fmt ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  V4L2_SUBDEV_FORMAT_ACTIVE ; 
 int /*<<< orphan*/  get_fmt ; 
 struct v4l2_subdev* FUNC0 (struct iss_video*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct v4l2_subdev_format*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct v4l2_subdev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct v4l2_subdev_format*) ; 

__attribute__((used)) static int
FUNC5(struct iss_video *video,
		       struct v4l2_mbus_framefmt *format)
{
	struct v4l2_subdev_format fmt;
	struct v4l2_subdev *subdev;
	u32 pad;
	int ret;

	subdev = FUNC0(video, &pad);
	if (!subdev)
		return -EINVAL;

	FUNC1(&fmt, 0, sizeof(fmt));
	fmt.pad = pad;
	fmt.which = V4L2_SUBDEV_FORMAT_ACTIVE;

	FUNC2(&video->mutex);
	ret = FUNC4(subdev, pad, get_fmt, NULL, &fmt);
	FUNC3(&video->mutex);

	if (ret)
		return ret;

	*format = fmt.format;
	return 0;
}