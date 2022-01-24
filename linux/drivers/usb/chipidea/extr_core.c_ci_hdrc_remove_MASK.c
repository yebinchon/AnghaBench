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
struct platform_device {int /*<<< orphan*/  dev; } ;
struct ci_hdrc {scalar_t__ supports_runtime_pm; scalar_t__ role_switch; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ci_hdrc*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ci_hdrc*) ; 
 int /*<<< orphan*/  FUNC2 (struct ci_hdrc*) ; 
 int /*<<< orphan*/  FUNC3 (struct ci_hdrc*) ; 
 int /*<<< orphan*/  FUNC4 (struct ci_hdrc*) ; 
 struct ci_hdrc* FUNC5 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 

__attribute__((used)) static int FUNC10(struct platform_device *pdev)
{
	struct ci_hdrc *ci = FUNC5(pdev);

	if (ci->role_switch)
		FUNC9(ci->role_switch);

	if (ci->supports_runtime_pm) {
		FUNC7(&pdev->dev);
		FUNC6(&pdev->dev);
		FUNC8(&pdev->dev);
	}

	FUNC4(ci);
	FUNC1(ci);
	FUNC0(ci, true);
	FUNC3(ci);
	FUNC2(ci);

	return 0;
}