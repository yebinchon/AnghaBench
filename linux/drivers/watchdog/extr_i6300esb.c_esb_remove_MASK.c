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
struct esb_dev {int /*<<< orphan*/  pdev; int /*<<< orphan*/  base; int /*<<< orphan*/  wdd; } ;

/* Variables and functions */
 struct esb_dev* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct pci_dev *pdev)
{
	struct esb_dev *edev = FUNC0(&pdev->dev);

	FUNC4(&edev->wdd);
	FUNC1(edev->base);
	FUNC3(edev->pdev, 0);
	FUNC2(edev->pdev);
}