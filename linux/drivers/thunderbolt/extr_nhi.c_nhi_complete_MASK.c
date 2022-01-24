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
struct tb {int dummy; } ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 struct tb* FUNC0 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct tb*) ; 
 struct pci_dev* FUNC4 (struct device*) ; 

__attribute__((used)) static void FUNC5(struct device *dev)
{
	struct pci_dev *pdev = FUNC4(dev);
	struct tb *tb = FUNC0(pdev);

	/*
	 * If we were runtime suspended when system suspend started,
	 * schedule runtime resume now. It should bring the domain back
	 * to functional state.
	 */
	if (FUNC2(&pdev->dev))
		FUNC1(&pdev->dev);
	else
		FUNC3(tb);
}