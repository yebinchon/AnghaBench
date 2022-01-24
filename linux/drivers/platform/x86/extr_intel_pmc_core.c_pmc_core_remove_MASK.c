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
struct pmc_dev {int /*<<< orphan*/  regbase; int /*<<< orphan*/  lock; } ;
struct platform_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct pmc_dev* FUNC2 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct platform_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct pmc_dev*) ; 

__attribute__((used)) static int FUNC5(struct platform_device *pdev)
{
	struct pmc_dev *pmcdev = FUNC2(pdev);

	FUNC4(pmcdev);
	FUNC3(pdev, NULL);
	FUNC1(&pmcdev->lock);
	FUNC0(pmcdev->regbase);
	return 0;
}