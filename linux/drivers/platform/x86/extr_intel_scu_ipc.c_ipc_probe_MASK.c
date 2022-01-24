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
struct pci_dev {int /*<<< orphan*/  dev; int /*<<< orphan*/  irq; } ;
struct intel_scu_ipc_pdata_t {int /*<<< orphan*/  i2c_len; int /*<<< orphan*/  i2c_base; int /*<<< orphan*/  irq_mode; } ;
struct intel_scu_ipc_dev {int /*<<< orphan*/ * dev; int /*<<< orphan*/  i2c_base; int /*<<< orphan*/  ipc_base; int /*<<< orphan*/  cmd_complete; int /*<<< orphan*/  irq_mode; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENODEV ; 
 int ENOMEM ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct intel_scu_ipc_dev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  ioc ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct intel_scu_ipc_dev ipcdev ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*,struct intel_scu_ipc_dev*) ; 
 int FUNC6 (struct pci_dev*) ; 
 int FUNC7 (struct pci_dev*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (struct pci_dev*) ; 

__attribute__((used)) static int FUNC9(struct pci_dev *pdev, const struct pci_device_id *id)
{
	int err;
	struct intel_scu_ipc_dev *scu = &ipcdev;
	struct intel_scu_ipc_pdata_t *pdata;

	if (scu->dev)		/* We support only one SCU */
		return -EBUSY;

	pdata = (struct intel_scu_ipc_pdata_t *)id->driver_data;
	if (!pdata)
		return -ENODEV;

	scu->irq_mode = pdata->irq_mode;

	err = FUNC6(pdev);
	if (err)
		return err;

	err = FUNC7(pdev, 1 << 0, FUNC4(pdev));
	if (err)
		return err;

	FUNC1(&scu->cmd_complete);

	scu->ipc_base = FUNC8(pdev)[0];

	scu->i2c_base = FUNC3(pdata->i2c_base, pdata->i2c_len);
	if (!scu->i2c_base)
		return -ENOMEM;

	err = FUNC0(&pdev->dev, pdev->irq, ioc, 0, "intel_scu_ipc",
			       scu);
	if (err)
		return err;

	/* Assign device at last */
	scu->dev = &pdev->dev;

	FUNC2();

	FUNC5(pdev, scu);
	return 0;
}