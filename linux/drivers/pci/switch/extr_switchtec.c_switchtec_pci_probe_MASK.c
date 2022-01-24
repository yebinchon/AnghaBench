#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  devt; } ;
struct switchtec_dev {TYPE_2__ dev; int /*<<< orphan*/  cdev; scalar_t__ dma_mrpc; TYPE_1__* mmio_part_cfg; } ;
struct pci_device_id {int dummy; } ;
struct pci_dev {int class; } ;
struct TYPE_6__ {int /*<<< orphan*/  mrpc_comp_hdr; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct switchtec_dev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int PCI_CLASS_BRIDGE_OTHER ; 
 int FUNC2 (struct switchtec_dev*) ; 
 int SWITCHTEC_EVENT_CLEAR ; 
 int SWITCHTEC_EVENT_EN_IRQ ; 
 int FUNC3 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct switchtec_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct switchtec_dev*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 struct switchtec_dev* FUNC12 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC13 (struct switchtec_dev*) ; 
 int FUNC14 (struct switchtec_dev*) ; 
 int FUNC15 (struct switchtec_dev*,struct pci_dev*) ; 
 int /*<<< orphan*/  switchtec_minor_ida ; 

__attribute__((used)) static int FUNC16(struct pci_dev *pdev,
			       const struct pci_device_id *id)
{
	struct switchtec_dev *stdev;
	int rc;

	if (pdev->class == (PCI_CLASS_BRIDGE_OTHER << 8))
		FUNC11("ntb_hw_switchtec");

	stdev = FUNC12(pdev);
	if (FUNC0(stdev))
		return FUNC2(stdev);

	rc = FUNC15(stdev, pdev);
	if (rc)
		goto err_put;

	rc = FUNC14(stdev);
	if (rc) {
		FUNC4(&stdev->dev, "failed to init isr.\n");
		goto err_put;
	}

	FUNC9(SWITCHTEC_EVENT_CLEAR |
		  SWITCHTEC_EVENT_EN_IRQ,
		  &stdev->mmio_part_cfg->mrpc_comp_hdr);
	FUNC7(stdev);

	if (stdev->dma_mrpc)
		FUNC6(stdev);

	rc = FUNC3(&stdev->cdev, &stdev->dev);
	if (rc)
		goto err_devadd;

	FUNC5(&stdev->dev, "Management device registered.\n");

	return 0;

err_devadd:
	FUNC13(stdev);
err_put:
	FUNC8(&switchtec_minor_ida, FUNC1(stdev->dev.devt));
	FUNC10(&stdev->dev);
	return rc;
}