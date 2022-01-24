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
struct imx_media_dev {int /*<<< orphan*/  mutex; int /*<<< orphan*/  m2m_vdev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct imx_media_dev*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct v4l2_async_notifier*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct imx_media_dev* FUNC7 (struct v4l2_async_notifier*) ; 

__attribute__((used)) static int FUNC8(struct v4l2_async_notifier *notifier)
{
	struct imx_media_dev *imxmd = FUNC7(notifier);
	int ret;

	/* call the imx5/6/7 common probe completion handler */
	ret = FUNC4(notifier);
	if (ret)
		return ret;

	FUNC5(&imxmd->mutex);

	imxmd->m2m_vdev = FUNC2(imxmd);
	if (FUNC0(imxmd->m2m_vdev)) {
		ret = FUNC1(imxmd->m2m_vdev);
		goto unlock;
	}

	ret = FUNC3(imxmd->m2m_vdev);
unlock:
	FUNC6(&imxmd->mutex);
	return ret;
}