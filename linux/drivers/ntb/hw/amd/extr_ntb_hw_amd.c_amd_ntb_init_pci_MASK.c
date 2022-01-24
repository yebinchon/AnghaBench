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
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;
struct amd_ntb_dev {scalar_t__ self_mmio; scalar_t__ peer_mmio; TYPE_1__ ntb; } ;

/* Variables and functions */
 scalar_t__ AMD_PEER_OFFSET ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EIO ; 
 int /*<<< orphan*/  NTB_NAME ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*) ; 
 int FUNC6 (struct pci_dev*) ; 
 scalar_t__ FUNC7 (struct pci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct pci_dev*,struct amd_ntb_dev*) ; 
 int /*<<< orphan*/  FUNC12 (struct pci_dev*) ; 

__attribute__((used)) static int FUNC13(struct amd_ntb_dev *ndev,
			    struct pci_dev *pdev)
{
	int rc;

	FUNC11(pdev, ndev);

	rc = FUNC6(pdev);
	if (rc)
		goto err_pci_enable;

	rc = FUNC8(pdev, NTB_NAME);
	if (rc)
		goto err_pci_regions;

	FUNC12(pdev);

	rc = FUNC10(pdev, FUNC0(64));
	if (rc) {
		rc = FUNC10(pdev, FUNC0(32));
		if (rc)
			goto err_dma_mask;
		FUNC1(&pdev->dev, "Cannot DMA highmem\n");
	}

	rc = FUNC9(pdev, FUNC0(64));
	if (rc) {
		rc = FUNC9(pdev, FUNC0(32));
		if (rc)
			goto err_dma_mask;
		FUNC1(&pdev->dev, "Cannot DMA consistent highmem\n");
	}
	rc = FUNC2(&ndev->ntb.dev,
					  FUNC3(&pdev->dev));
	if (rc)
		goto err_dma_mask;

	ndev->self_mmio = FUNC7(pdev, 0, 0);
	if (!ndev->self_mmio) {
		rc = -EIO;
		goto err_dma_mask;
	}
	ndev->peer_mmio = ndev->self_mmio + AMD_PEER_OFFSET;

	return 0;

err_dma_mask:
	FUNC4(pdev);
err_pci_regions:
	FUNC5(pdev);
err_pci_enable:
	FUNC11(pdev, NULL);
	return rc;
}