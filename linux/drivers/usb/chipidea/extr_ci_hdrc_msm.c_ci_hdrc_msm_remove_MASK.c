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
struct ci_hdrc_msm {int /*<<< orphan*/  core_clk; int /*<<< orphan*/  iface_clk; int /*<<< orphan*/  ci; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct ci_hdrc_msm* FUNC2 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct platform_device *pdev)
{
	struct ci_hdrc_msm *ci = FUNC2(pdev);

	FUNC3(&pdev->dev);
	FUNC0(ci->ci);
	FUNC1(ci->iface_clk);
	FUNC1(ci->core_clk);

	return 0;
}