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
struct pci_dev {int /*<<< orphan*/  dev; int /*<<< orphan*/  irq; } ;
struct Scsi_Host {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 struct Scsi_Host* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*) ; 
 int FUNC2 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*) ; 
 int FUNC4 (struct pci_dev*,char*) ; 
 scalar_t__ FUNC5 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct pci_dev*,struct Scsi_Host*) ; 

__attribute__((used)) static int FUNC8(struct pci_dev *pdev,
			     const struct pci_device_id *d)
{
	int err;
	struct Scsi_Host *sh;

	err = FUNC2(pdev);
	if (err)
		goto fail;

	err = FUNC4(pdev, "fdomain_pci");
	if (err)
		goto disable_device;

	err = -ENODEV;
	if (FUNC5(pdev, 0) == 0)
		goto release_region;

	sh = FUNC0(FUNC6(pdev, 0), pdev->irq, 7,
			    &pdev->dev);
	if (!sh)
		goto release_region;

	FUNC7(pdev, sh);
	return 0;

release_region:
	FUNC3(pdev);
disable_device:
	FUNC1(pdev);
fail:
	return err;
}