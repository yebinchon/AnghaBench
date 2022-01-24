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
typedef  int /*<<< orphan*/  u8 ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  topo; struct pci_dev* pdev; } ;
struct intel_ntb_dev {int /*<<< orphan*/  hwerr_flags; TYPE_1__ ntb; int /*<<< orphan*/ * reg; } ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
 int /*<<< orphan*/  NTB_HWERR_MSIX_VECTOR32_BAD ; 
 int /*<<< orphan*/  NTB_TOPO_NONE ; 
 int /*<<< orphan*/  XEON_PPD_OFFSET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct intel_ntb_dev*) ; 
 int FUNC2 (struct intel_ntb_dev*) ; 
 int /*<<< orphan*/  gen3_reg ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct pci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct intel_ntb_dev*,int /*<<< orphan*/ ) ; 

int FUNC6(struct intel_ntb_dev *ndev)
{
	struct pci_dev *pdev;
	u8 ppd;
	int rc;

	pdev = ndev->ntb.pdev;

	ndev->reg = &gen3_reg;

	rc = FUNC4(pdev, XEON_PPD_OFFSET, &ppd);
	if (rc)
		return -EIO;

	ndev->ntb.topo = FUNC5(ndev, ppd);
	FUNC0(&pdev->dev, "ppd %#x topo %s\n", ppd,
		FUNC3(ndev->ntb.topo));
	if (ndev->ntb.topo == NTB_TOPO_NONE)
		return -EINVAL;

	ndev->hwerr_flags |= NTB_HWERR_MSIX_VECTOR32_BAD;

	rc = FUNC2(ndev);
	if (rc)
		return rc;

	return FUNC1(ndev);
}