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
struct ism_dev {int /*<<< orphan*/  smcd; struct pci_dev* pdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct ism_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ism_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct ism_dev*) ; 

__attribute__((used)) static void FUNC6(struct ism_dev *ism)
{
	struct pci_dev *pdev = ism->pdev;

	FUNC3(ism->smcd);
	FUNC4(ism);
	FUNC5(ism);
	FUNC0(FUNC2(pdev, 0), ism);
	FUNC1(pdev);
}