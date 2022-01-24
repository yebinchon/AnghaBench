#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct pci_device_id {int dummy; } ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {int /*<<< orphan*/ * ops; } ;
struct intel_ntb_dev {TYPE_2__ ntb; TYPE_1__* reg; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* poll_link ) (struct intel_ntb_dev*) ;} ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct intel_ntb_dev*) ; 
 int /*<<< orphan*/  intel_ntb3_ops ; 
 int /*<<< orphan*/  FUNC3 (struct intel_ntb_dev*) ; 
 int FUNC4 (struct intel_ntb_dev*,struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct intel_ntb_dev*) ; 
 struct intel_ntb_dev* FUNC6 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct intel_ntb_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct intel_ntb_dev*) ; 
 int /*<<< orphan*/  FUNC9 (struct intel_ntb_dev*,struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC10 (struct intel_ntb_dev*) ; 
 int FUNC11 (TYPE_2__*) ; 
 scalar_t__ FUNC12 (struct pci_dev*) ; 
 scalar_t__ FUNC13 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC14 (struct intel_ntb_dev*) ; 
 int /*<<< orphan*/  FUNC15 (struct intel_ntb_dev*) ; 
 int FUNC16 (struct intel_ntb_dev*) ; 

__attribute__((used)) static int FUNC17(struct pci_dev *pdev,
			       const struct pci_device_id *id)
{
	struct intel_ntb_dev *ndev;
	int rc, node;

	node = FUNC1(&pdev->dev);

	if (FUNC12(pdev)) {
		ndev = FUNC6(sizeof(*ndev), GFP_KERNEL, node);
		if (!ndev) {
			rc = -ENOMEM;
			goto err_ndev;
		}

		FUNC9(ndev, pdev);

		rc = FUNC4(ndev, pdev);
		if (rc)
			goto err_init_pci;

		rc = FUNC16(ndev);
		if (rc)
			goto err_init_dev;

	} else if (FUNC13(pdev)) {
		ndev = FUNC6(sizeof(*ndev), GFP_KERNEL, node);
		if (!ndev) {
			rc = -ENOMEM;
			goto err_ndev;
		}

		FUNC9(ndev, pdev);
		ndev->ntb.ops = &intel_ntb3_ops;

		rc = FUNC4(ndev, pdev);
		if (rc)
			goto err_init_pci;

		rc = FUNC2(ndev);
		if (rc)
			goto err_init_dev;

	} else {
		rc = -EINVAL;
		goto err_ndev;
	}

	FUNC10(ndev);

	ndev->reg->poll_link(ndev);

	FUNC8(ndev);

	rc = FUNC11(&ndev->ntb);
	if (rc)
		goto err_register;

	FUNC0(&pdev->dev, "NTB device registered.\n");

	return 0;

err_register:
	FUNC7(ndev);
	if (FUNC12(pdev) || FUNC13(pdev))
		FUNC15(ndev);
err_init_dev:
	FUNC3(ndev);
err_init_pci:
	FUNC5(ndev);
err_ndev:
	return rc;
}