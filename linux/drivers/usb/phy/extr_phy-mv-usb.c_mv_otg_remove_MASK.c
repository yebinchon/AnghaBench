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
struct mv_otg {int /*<<< orphan*/  phy; scalar_t__ qwork; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct mv_otg*) ; 
 struct mv_otg* FUNC3 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct platform_device *pdev)
{
	struct mv_otg *mvotg = FUNC3(pdev);

	if (mvotg->qwork) {
		FUNC1(mvotg->qwork);
		FUNC0(mvotg->qwork);
	}

	FUNC2(mvotg);

	FUNC4(&mvotg->phy);

	return 0;
}