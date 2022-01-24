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
struct ism_dev {int /*<<< orphan*/  smcd; } ;

/* Variables and functions */
 struct ism_dev* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ism_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct ism_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct pci_dev *pdev)
{
	struct ism_dev *ism = FUNC0(&pdev->dev);

	FUNC2(ism);

	FUNC6(ism->smcd);
	FUNC5(pdev);
	FUNC4(pdev);
	FUNC1(&pdev->dev, NULL);
	FUNC3(ism);
}