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
typedef  int /*<<< orphan*/  sym_dev ;
struct sym_nvram {int /*<<< orphan*/  host_id; struct pci_dev* pdev; } ;
struct sym_device {int /*<<< orphan*/  host_id; struct pci_dev* pdev; } ;
struct pci_device_id {int dummy; } ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct Scsi_Host {int dummy; } ;
typedef  int /*<<< orphan*/  nvram ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  NAME53C8XX ; 
 int /*<<< orphan*/  SYM_SETUP_HOST_ID ; 
 int /*<<< orphan*/  attach_count ; 
 int /*<<< orphan*/  FUNC0 (struct sym_nvram*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*) ; 
 scalar_t__ FUNC2 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*) ; 
 scalar_t__ FUNC5 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*) ; 
 scalar_t__ FUNC7 (struct Scsi_Host*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  sym2_template ; 
 struct Scsi_Host* FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct sym_nvram*) ; 
 scalar_t__ FUNC10 (struct sym_nvram*) ; 
 scalar_t__ FUNC11 (struct sym_nvram*) ; 
 int /*<<< orphan*/  FUNC12 (struct pci_dev*,struct sym_nvram*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC14 (struct sym_nvram*,struct sym_nvram*) ; 
 scalar_t__ FUNC15 (struct sym_nvram*) ; 
 int /*<<< orphan*/  FUNC16 (struct sym_nvram*) ; 
 scalar_t__ FUNC17 (struct sym_nvram*) ; 

__attribute__((used)) static int FUNC18(struct pci_dev *pdev, const struct pci_device_id *ent)
{
	struct sym_device sym_dev;
	struct sym_nvram nvram;
	struct Scsi_Host *shost;
	int do_iounmap = 0;
	int do_disable_device = 1;

	FUNC0(&sym_dev, 0, sizeof(sym_dev));
	FUNC0(&nvram, 0, sizeof(nvram));
	sym_dev.pdev = pdev;
	sym_dev.host_id = SYM_SETUP_HOST_ID;

	if (FUNC2(pdev))
		goto leave;

	FUNC6(pdev);

	if (FUNC5(pdev, NAME53C8XX))
		goto disable;

	if (FUNC11(&sym_dev))
		goto free;

	if (FUNC15(&sym_dev))
		goto free;
	do_iounmap = 1;

	if (FUNC10(&sym_dev)) {
		do_disable_device = 0;	/* Don't disable the device */
		goto free;
	}

	if (FUNC17(&sym_dev))
		goto free;

	FUNC12(pdev, &sym_dev);

	FUNC14(&sym_dev, &nvram);

	do_iounmap = 0; /* Don't sym_iounmap_device() after sym_attach(). */
	shost = FUNC9(&sym2_template, attach_count, &sym_dev);
	if (!shost)
		goto free;

	if (FUNC7(shost, &pdev->dev))
		goto detach;
	FUNC8(shost);

	attach_count++;

	return 0;

 detach:
	FUNC13(FUNC3(pdev), pdev);
 free:
	if (do_iounmap)
		FUNC16(&sym_dev);
	FUNC4(pdev);
 disable:
	if (do_disable_device)
		FUNC1(pdev);
 leave:
	return -ENODEV;
}