#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct pci_dev {int /*<<< orphan*/  dev; int /*<<< orphan*/  irq; } ;
struct TYPE_4__ {struct pci_dev* pdev; } ;
struct intel_ntb_dev {int entry; int num; int db_vec_count; int db_vec_shift; struct intel_ntb_dev* vec; struct intel_ntb_dev* msix; int /*<<< orphan*/  vector; struct intel_ntb_dev* ndev; TYPE_3__* self_reg; scalar_t__ self_mmio; int /*<<< orphan*/  db_mask; TYPE_2__* reg; int /*<<< orphan*/  db_valid_mask; TYPE_1__ ntb; } ;
struct TYPE_6__ {scalar_t__ db_mask; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* db_iowrite ) (int /*<<< orphan*/ ,scalar_t__) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct intel_ntb_dev*) ; 
 void* FUNC3 (int,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct intel_ntb_dev*) ; 
 int /*<<< orphan*/  ndev_irq_isr ; 
 int /*<<< orphan*/  ndev_vec_isr ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*) ; 
 int FUNC7 (struct pci_dev*) ; 
 int FUNC8 (struct pci_dev*,struct intel_ntb_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC9 (struct pci_dev*,int) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct intel_ntb_dev*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,scalar_t__) ; 

int FUNC12(struct intel_ntb_dev *ndev,
			 int msix_min, int msix_max,
			 int msix_shift, int total_shift)
{
	struct pci_dev *pdev;
	int rc, i, msix_count, node;

	pdev = ndev->ntb.pdev;

	node = FUNC1(&pdev->dev);

	/* Mask all doorbell interrupts */
	ndev->db_mask = ndev->db_valid_mask;
	ndev->reg->db_iowrite(ndev->db_mask,
			      ndev->self_mmio +
			      ndev->self_reg->db_mask);

	/* Try to set up msix irq */

	ndev->vec = FUNC3(msix_max, sizeof(*ndev->vec),
				 GFP_KERNEL, node);
	if (!ndev->vec)
		goto err_msix_vec_alloc;

	ndev->msix = FUNC3(msix_max, sizeof(*ndev->msix),
				  GFP_KERNEL, node);
	if (!ndev->msix)
		goto err_msix_alloc;

	for (i = 0; i < msix_max; ++i)
		ndev->msix[i].entry = i;

	msix_count = FUNC8(pdev, ndev->msix,
					   msix_min, msix_max);
	if (msix_count < 0)
		goto err_msix_enable;

	for (i = 0; i < msix_count; ++i) {
		ndev->vec[i].ndev = ndev;
		ndev->vec[i].num = i;
		rc = FUNC10(ndev->msix[i].vector, ndev_vec_isr, 0,
				 "ndev_vec_isr", &ndev->vec[i]);
		if (rc)
			goto err_msix_request;
	}

	FUNC0(&pdev->dev, "Using %d msix interrupts\n", msix_count);
	ndev->db_vec_count = msix_count;
	ndev->db_vec_shift = msix_shift;
	return 0;

err_msix_request:
	while (i-- > 0)
		FUNC2(ndev->msix[i].vector, &ndev->vec[i]);
	FUNC6(pdev);
err_msix_enable:
	FUNC4(ndev->msix);
err_msix_alloc:
	FUNC4(ndev->vec);
err_msix_vec_alloc:
	ndev->msix = NULL;
	ndev->vec = NULL;

	/* Try to set up msi irq */

	rc = FUNC7(pdev);
	if (rc)
		goto err_msi_enable;

	rc = FUNC10(pdev->irq, ndev_irq_isr, 0,
			 "ndev_irq_isr", ndev);
	if (rc)
		goto err_msi_request;

	FUNC0(&pdev->dev, "Using msi interrupts\n");
	ndev->db_vec_count = 1;
	ndev->db_vec_shift = total_shift;
	return 0;

err_msi_request:
	FUNC5(pdev);
err_msi_enable:

	/* Try to set up intx irq */

	FUNC9(pdev, 1);

	rc = FUNC10(pdev->irq, ndev_irq_isr, IRQF_SHARED,
			 "ndev_irq_isr", ndev);
	if (rc)
		goto err_intx_request;

	FUNC0(&pdev->dev, "Using intx interrupts\n");
	ndev->db_vec_count = 1;
	ndev->db_vec_shift = total_shift;
	return 0;

err_intx_request:
	return rc;
}