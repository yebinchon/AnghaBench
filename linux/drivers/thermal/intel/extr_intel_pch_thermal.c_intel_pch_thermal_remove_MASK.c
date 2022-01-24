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
struct pci_dev {int dummy; } ;
struct pch_thermal_device {int /*<<< orphan*/  hw_base; int /*<<< orphan*/  tzd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*) ; 
 struct pch_thermal_device* FUNC2 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct pci_dev *pdev)
{
	struct pch_thermal_device *ptd = FUNC2(pdev);

	FUNC5(ptd->tzd);
	FUNC0(ptd->hw_base);
	FUNC4(pdev, NULL);
	FUNC3(pdev, 0);
	FUNC1(pdev);
}