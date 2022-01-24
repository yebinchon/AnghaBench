#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct platform_device {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  devnode; } ;
struct cedrus_dev {int /*<<< orphan*/  v4l2_dev; int /*<<< orphan*/  vfd; int /*<<< orphan*/  m2m_dev; TYPE_1__ mdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cedrus_dev*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 struct cedrus_dev* FUNC4 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct platform_device *pdev)
{
	struct cedrus_dev *dev = FUNC4(pdev);

	if (FUNC3(dev->mdev.devnode)) {
		FUNC2(&dev->mdev);
		FUNC7(dev->m2m_dev);
		FUNC1(&dev->mdev);
	}

	FUNC6(dev->m2m_dev);
	FUNC8(&dev->vfd);
	FUNC5(&dev->v4l2_dev);

	FUNC0(dev);

	return 0;
}