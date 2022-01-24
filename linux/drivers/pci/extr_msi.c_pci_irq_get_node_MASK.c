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
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct cpumask {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct cpumask const*) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 struct cpumask* FUNC4 (struct pci_dev*,int) ; 

int FUNC5(struct pci_dev *pdev, int vec)
{
	const struct cpumask *mask;

	mask = FUNC4(pdev, vec);
	if (mask)
		return FUNC3(FUNC0(FUNC1(mask)));
	return FUNC2(&pdev->dev);
}