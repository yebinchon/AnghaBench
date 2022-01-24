#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  topo; struct pci_dev* pdev; } ;
struct amd_ntb_dev {int /*<<< orphan*/  db_count; scalar_t__ db_valid_mask; TYPE_1__ ntb; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct amd_ntb_dev*) ; 
 int FUNC2 (struct amd_ntb_dev*) ; 
 int FUNC3 (struct amd_ntb_dev*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct amd_ntb_dev *ndev)
{
	struct pci_dev *pdev;
	int rc = 0;

	pdev = ndev->ntb.pdev;

	ndev->ntb.topo = FUNC1(ndev);
	FUNC4(&pdev->dev, "AMD NTB topo is %s\n",
		FUNC6(ndev->ntb.topo));

	rc = FUNC3(ndev);
	if (rc)
		return rc;

	rc = FUNC2(ndev);
	if (rc) {
		FUNC5(&pdev->dev, "fail to init isr.\n");
		return rc;
	}

	ndev->db_valid_mask = FUNC0(ndev->db_count) - 1;

	return 0;
}