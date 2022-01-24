#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct pci_device_id {int dummy; } ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct ism_dev {TYPE_1__* smcd; struct pci_dev* pdev; int /*<<< orphan*/  lock; } ;
struct TYPE_3__ {struct ism_dev* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  DRV_NAME ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  ISM_NR_DMBS ; 
 scalar_t__ SZ_1M ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct ism_dev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__) ; 
 int FUNC5 (struct ism_dev*) ; 
 int /*<<< orphan*/  ism_ops ; 
 int /*<<< orphan*/  FUNC6 (struct ism_dev*) ; 
 struct ism_dev* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct pci_dev*) ; 
 int FUNC9 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC10 (struct pci_dev*) ; 
 int FUNC11 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct pci_dev*) ; 
 TYPE_1__* FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC17(struct pci_dev *pdev, const struct pci_device_id *id)
{
	struct ism_dev *ism;
	int ret;

	ism = FUNC7(sizeof(*ism), GFP_KERNEL);
	if (!ism)
		return -ENOMEM;

	FUNC16(&ism->lock);
	FUNC2(&pdev->dev, ism);
	ism->pdev = pdev;

	ret = FUNC9(pdev);
	if (ret)
		goto err;

	ret = FUNC11(pdev, DRV_NAME);
	if (ret)
		goto err_disable;

	ret = FUNC12(pdev, FUNC0(64));
	if (ret)
		goto err_resource;

	FUNC4(&pdev->dev, SZ_1M - 1);
	FUNC3(&pdev->dev, SZ_1M);
	FUNC13(pdev);

	ism->smcd = FUNC14(&pdev->dev, FUNC1(&pdev->dev), &ism_ops,
				   ISM_NR_DMBS);
	if (!ism->smcd)
		goto err_resource;

	ism->smcd->priv = ism;
	ret = FUNC5(ism);
	if (ret)
		goto err_free;

	return 0;

err_free:
	FUNC15(ism->smcd);
err_resource:
	FUNC10(pdev);
err_disable:
	FUNC8(pdev);
err:
	FUNC6(ism);
	FUNC2(&pdev->dev, NULL);
	return ret;
}