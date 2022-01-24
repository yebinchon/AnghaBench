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
struct platform_device {int dummy; } ;
struct imx_media_dev {int /*<<< orphan*/  md; int /*<<< orphan*/  v4l2_dev; int /*<<< orphan*/  m2m_vdev; int /*<<< orphan*/  notifier; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct imx_media_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static int FUNC9(struct platform_device *pdev)
{
	struct imx_media_dev *imxmd =
		(struct imx_media_dev *)FUNC4(pdev);

	FUNC8(&imxmd->v4l2_dev, "Removing imx-media\n");

	FUNC6(&imxmd->notifier);
	FUNC1(imxmd);
	FUNC5(&imxmd->notifier);
	FUNC0(imxmd->m2m_vdev);
	FUNC3(&imxmd->md);
	FUNC7(&imxmd->v4l2_dev);
	FUNC2(&imxmd->md);

	return 0;
}