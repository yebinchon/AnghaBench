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
struct pci_device_id {int dummy; } ;
struct pci_dev {scalar_t__ device; int /*<<< orphan*/  dev; int /*<<< orphan*/  irq; } ;
struct asc_board {int /*<<< orphan*/  flags; struct Scsi_Host* shost; int /*<<< orphan*/ * dev; int /*<<< orphan*/  irq; } ;
struct Scsi_Host {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ASC_IS_PCI ; 
 int /*<<< orphan*/  ASC_IS_WIDE_BOARD ; 
 int /*<<< orphan*/  DRV_NAME ; 
 int ENODEV ; 
 int ENOMEM ; 
 scalar_t__ PCI_DEVICE_ID_38C0800_REV1 ; 
 scalar_t__ PCI_DEVICE_ID_38C1600_REV1 ; 
 scalar_t__ PCI_DEVICE_ID_ASP_ABP940UW ; 
 int FUNC0 (struct Scsi_Host*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*) ; 
 int /*<<< orphan*/  advansys_template ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*) ; 
 int FUNC3 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*) ; 
 int FUNC5 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct pci_dev*,struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC9 (struct pci_dev*) ; 
 struct Scsi_Host* FUNC10 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (struct Scsi_Host*) ; 
 struct asc_board* FUNC12 (struct Scsi_Host*) ; 

__attribute__((used)) static int FUNC13(struct pci_dev *pdev,
			      const struct pci_device_id *ent)
{
	int err, ioport;
	struct Scsi_Host *shost;
	struct asc_board *board;

	err = FUNC3(pdev);
	if (err)
		goto fail;
	err = FUNC5(pdev, DRV_NAME);
	if (err)
		goto disable_device;
	FUNC9(pdev);
	FUNC1(pdev);

	err = -ENODEV;
	if (FUNC6(pdev, 0) == 0)
		goto release_region;

	ioport = FUNC7(pdev, 0);

	err = -ENOMEM;
	shost = FUNC10(&advansys_template, sizeof(*board));
	if (!shost)
		goto release_region;

	board = FUNC12(shost);
	board->irq = pdev->irq;
	board->dev = &pdev->dev;
	board->shost = shost;

	if (pdev->device == PCI_DEVICE_ID_ASP_ABP940UW ||
	    pdev->device == PCI_DEVICE_ID_38C0800_REV1 ||
	    pdev->device == PCI_DEVICE_ID_38C1600_REV1) {
		board->flags |= ASC_IS_WIDE_BOARD;
	}

	err = FUNC0(shost, ioport, ASC_IS_PCI);
	if (err)
		goto free_host;

	FUNC8(pdev, shost);
	return 0;

 free_host:
	FUNC11(shost);
 release_region:
	FUNC4(pdev);
 disable_device:
	FUNC2(pdev);
 fail:
	return err;
}