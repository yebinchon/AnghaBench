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
struct v4l2_async_notifier {int dummy; } ;
struct imx_media_dev {int /*<<< orphan*/  md; int /*<<< orphan*/  mutex; int /*<<< orphan*/  v4l2_dev; } ;

/* Variables and functions */
 int FUNC0 (struct v4l2_async_notifier*) ; 
 int FUNC1 (struct imx_media_dev*) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct imx_media_dev* FUNC5 (struct v4l2_async_notifier*) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 

int FUNC7(struct v4l2_async_notifier *notifier)
{
	struct imx_media_dev *imxmd = FUNC5(notifier);
	int ret;

	FUNC3(&imxmd->mutex);

	ret = FUNC0(notifier);
	if (ret)
		goto unlock;

	ret = FUNC1(imxmd);
	if (ret)
		goto unlock;

	ret = FUNC6(&imxmd->v4l2_dev);
unlock:
	FUNC4(&imxmd->mutex);
	if (ret)
		return ret;

	return FUNC2(&imxmd->md);
}