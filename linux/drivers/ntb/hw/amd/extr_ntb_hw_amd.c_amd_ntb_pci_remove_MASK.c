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
struct amd_ntb_dev {int /*<<< orphan*/  ntb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct amd_ntb_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct amd_ntb_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct amd_ntb_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct amd_ntb_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct amd_ntb_dev*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct amd_ntb_dev* FUNC6 (struct pci_dev*) ; 

__attribute__((used)) static void FUNC7(struct pci_dev *pdev)
{
	struct amd_ntb_dev *ndev = FUNC6(pdev);

	FUNC5(&ndev->ntb);
	FUNC4(ndev);
	FUNC1(ndev);
	FUNC0(ndev);
	FUNC2(ndev);
	FUNC3(ndev);
}