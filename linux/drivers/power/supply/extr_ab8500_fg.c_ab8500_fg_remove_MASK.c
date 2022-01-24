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
struct ab8500_fg {int /*<<< orphan*/  fg_psy; int /*<<< orphan*/  fg_wq; int /*<<< orphan*/  dev; int /*<<< orphan*/  node; } ;

/* Variables and functions */
 int FUNC0 (struct ab8500_fg*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ab8500_fg*) ; 
 int /*<<< orphan*/  FUNC2 (struct ab8500_fg*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct ab8500_fg* FUNC7 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct platform_device *pdev)
{
	int ret = 0;
	struct ab8500_fg *di = FUNC7(pdev);

	FUNC6(&di->node);

	/* Disable coulomb counter */
	ret = FUNC0(di, false);
	if (ret)
		FUNC4(di->dev, "failed to disable coulomb counter\n");

	FUNC3(di->fg_wq);
	FUNC1(di);

	FUNC5();
	FUNC2(di);
	FUNC8(di->fg_psy);
	return ret;
}