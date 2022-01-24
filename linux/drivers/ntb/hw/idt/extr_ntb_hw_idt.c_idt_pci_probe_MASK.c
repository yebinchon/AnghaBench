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
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct idt_ntb_dev {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct idt_ntb_dev*) ; 
 int FUNC1 (struct idt_ntb_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int FUNC3 (struct pci_dev*) ; 
 struct idt_ntb_dev* FUNC4 (struct pci_dev*,struct pci_device_id const*) ; 
 int /*<<< orphan*/  FUNC5 (struct idt_ntb_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct idt_ntb_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct idt_ntb_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct idt_ntb_dev*) ; 
 int FUNC9 (struct idt_ntb_dev*) ; 
 int /*<<< orphan*/  FUNC10 (struct idt_ntb_dev*) ; 
 int /*<<< orphan*/  FUNC11 (struct idt_ntb_dev*) ; 
 int FUNC12 (struct idt_ntb_dev*) ; 
 int FUNC13 (struct idt_ntb_dev*) ; 
 int /*<<< orphan*/  FUNC14 (struct idt_ntb_dev*) ; 
 int FUNC15 (struct idt_ntb_dev*) ; 
 int /*<<< orphan*/  FUNC16 (struct idt_ntb_dev*) ; 

__attribute__((used)) static int FUNC17(struct pci_dev *pdev,
			 const struct pci_device_id *id)
{
	struct idt_ntb_dev *ndev;
	int ret;

	/* Check whether IDT PCIe-switch is properly pre-initialized */
	ret = FUNC3(pdev);
	if (ret != 0)
		return ret;

	/* Allocate the memory for IDT NTB device data */
	ndev = FUNC4(pdev, id);
	if (FUNC0(ndev))
		return FUNC1(ndev);

	/* Initialize the basic PCI subsystem of the device */
	ret = FUNC13(ndev);
	if (ret != 0)
		return ret;

	/* Scan ports of the IDT PCIe-switch */
	(void)FUNC16(ndev);

	/* Initialize NTB link events subsystem */
	FUNC10(ndev);

	/* Initialize MWs subsystem */
	ret = FUNC12(ndev);
	if (ret != 0)
		goto err_deinit_link;

	/* Initialize Messaging subsystem */
	FUNC11(ndev);

	/* Initialize hwmon interface */
	FUNC14(ndev);

	/* Initialize IDT interrupts handler */
	ret = FUNC9(ndev);
	if (ret != 0)
		goto err_deinit_link;

	/* Register IDT NTB devices on the NTB bus */
	ret = FUNC15(ndev);
	if (ret != 0)
		goto err_deinit_isr;

	/* Initialize DebugFS info node */
	(void)FUNC8(ndev);

	/* IDT PCIe-switch NTB driver is finally initialized */
	FUNC2(&pdev->dev, "IDT NTB device is ready");

	/* May the force be with us... */
	return 0;

err_deinit_isr:
	FUNC5(ndev);
err_deinit_link:
	FUNC6(ndev);
	FUNC7(ndev);

	return ret;
}