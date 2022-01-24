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
struct wd719x {int /*<<< orphan*/  base; struct pci_dev* pdev; } ;
struct pci_device_id {int dummy; } ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct Scsi_Host {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*) ; 
 int FUNC4 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct pci_dev*) ; 
 int FUNC8 (struct pci_dev*,char*) ; 
 scalar_t__ FUNC9 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct pci_dev*,struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC11 (struct pci_dev*) ; 
 int FUNC12 (struct Scsi_Host*,int /*<<< orphan*/ *) ; 
 struct Scsi_Host* FUNC13 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC14 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC15 (struct Scsi_Host*) ; 
 struct wd719x* FUNC16 (struct Scsi_Host*) ; 
 int FUNC17 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC18 (struct wd719x*) ; 
 int /*<<< orphan*/  wd719x_template ; 

__attribute__((used)) static int FUNC19(struct pci_dev *pdev, const struct pci_device_id *d)
{
	int err;
	struct Scsi_Host *sh;
	struct wd719x *wd;

	err = FUNC4(pdev);
	if (err)
		goto fail;

	if (FUNC2(&pdev->dev, FUNC0(32))) {
		FUNC1(&pdev->dev, "Unable to set 32-bit DMA mask\n");
		goto disable_device;
	}

	err = FUNC8(pdev, "wd719x");
	if (err)
		goto disable_device;
	FUNC11(pdev);

	err = -ENODEV;
	if (FUNC9(pdev, 0) == 0)
		goto release_region;

	err = -ENOMEM;
	sh = FUNC13(&wd719x_template, sizeof(struct wd719x));
	if (!sh)
		goto release_region;

	wd = FUNC16(sh);
	wd->base = FUNC5(pdev, 0, 0);
	if (!wd->base)
		goto free_host;
	wd->pdev = pdev;

	err = FUNC17(sh);
	if (err)
		goto unmap;

	err = FUNC12(sh, &wd->pdev->dev);
	if (err)
		goto destroy;

	FUNC15(sh);

	FUNC10(pdev, sh);
	return 0;

destroy:
	FUNC18(wd);
unmap:
	FUNC6(pdev, wd->base);
free_host:
	FUNC14(sh);
release_region:
	FUNC7(pdev);
disable_device:
	FUNC3(pdev);
fail:
	return err;
}