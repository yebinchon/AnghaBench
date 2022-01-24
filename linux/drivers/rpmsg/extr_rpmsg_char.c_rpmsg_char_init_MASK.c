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

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RPMSG_DEV_MAX ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rpmsg_chrdev_driver ; 
 int /*<<< orphan*/  rpmsg_class ; 
 int /*<<< orphan*/  rpmsg_major ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(void)
{
	int ret;

	ret = FUNC2(&rpmsg_major, 0, RPMSG_DEV_MAX, "rpmsg");
	if (ret < 0) {
		FUNC5("rpmsg: failed to allocate char dev region\n");
		return ret;
	}

	rpmsg_class = FUNC3(THIS_MODULE, "rpmsg");
	if (FUNC0(rpmsg_class)) {
		FUNC5("failed to create rpmsg class\n");
		FUNC7(rpmsg_major, RPMSG_DEV_MAX);
		return FUNC1(rpmsg_class);
	}

	ret = FUNC6(&rpmsg_chrdev_driver);
	if (ret < 0) {
		FUNC5("rpmsgchr: failed to register rpmsg driver\n");
		FUNC4(rpmsg_class);
		FUNC7(rpmsg_major, RPMSG_DEV_MAX);
	}

	return ret;
}