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
struct pci_device_id {scalar_t__ driver_data; } ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct ntb_dev_data {int dummy; } ;
struct amd_ntb_dev {int /*<<< orphan*/  ntb; struct ntb_dev_data* dev_data; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct amd_ntb_dev*) ; 
 int FUNC1 (struct amd_ntb_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct amd_ntb_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct amd_ntb_dev*) ; 
 int FUNC4 (struct amd_ntb_dev*,struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct amd_ntb_dev*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct amd_ntb_dev*) ; 
 struct amd_ntb_dev* FUNC9 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (struct amd_ntb_dev*) ; 
 int /*<<< orphan*/  FUNC11 (struct amd_ntb_dev*) ; 
 int /*<<< orphan*/  FUNC12 (struct amd_ntb_dev*,struct pci_dev*) ; 
 int FUNC13 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC14(struct pci_dev *pdev,
			     const struct pci_device_id *id)
{
	struct amd_ntb_dev *ndev;
	int rc, node;

	node = FUNC7(&pdev->dev);

	ndev = FUNC9(sizeof(*ndev), GFP_KERNEL, node);
	if (!ndev) {
		rc = -ENOMEM;
		goto err_ndev;
	}

	ndev->dev_data = (struct ntb_dev_data *)id->driver_data;

	FUNC12(ndev, pdev);

	rc = FUNC4(ndev, pdev);
	if (rc)
		goto err_init_pci;

	rc = FUNC1(ndev);
	if (rc)
		goto err_init_dev;

	/* write side info */
	FUNC2(ndev);

	FUNC5(ndev);

	FUNC11(ndev);

	rc = FUNC13(&ndev->ntb);
	if (rc)
		goto err_register;

	FUNC6(&pdev->dev, "NTB device registered.\n");

	return 0;

err_register:
	FUNC10(ndev);
	FUNC0(ndev);
err_init_dev:
	FUNC3(ndev);
err_init_pci:
	FUNC8(ndev);
err_ndev:
	return rc;
}