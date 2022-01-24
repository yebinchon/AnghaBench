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
struct qcom_wcnss {int /*<<< orphan*/  rproc; int /*<<< orphan*/  smd_subdev; int /*<<< orphan*/  sysmon; int /*<<< orphan*/  state; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct qcom_wcnss* FUNC1 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct platform_device *pdev)
{
	struct qcom_wcnss *wcnss = FUNC1(pdev);

	FUNC0(&pdev->dev);

	FUNC4(wcnss->state);
	FUNC5(wcnss->rproc);

	FUNC3(wcnss->sysmon);
	FUNC2(wcnss->rproc, &wcnss->smd_subdev);
	FUNC6(wcnss->rproc);

	return 0;
}