#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct pci_device_id {scalar_t__ driver_data; } ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {struct pci_dev* pdev; } ;
struct idt_ntb_dev {struct idt_89hpes_cfg* swcfg; int /*<<< orphan*/  gasa_lock; int /*<<< orphan*/  msg_mask_lock; int /*<<< orphan*/  db_mask_lock; TYPE_1__ ntb; } ;
struct idt_89hpes_cfg {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct idt_ntb_dev* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 struct idt_ntb_dev* FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct idt_ntb_dev *FUNC6(struct pci_dev *pdev,
					  const struct pci_device_id *id)
{
	struct idt_ntb_dev *ndev;

	/* Allocate memory for the IDT PCIe-device descriptor */
	ndev = FUNC4(&pdev->dev, sizeof(*ndev), GFP_KERNEL);
	if (!ndev) {
		FUNC2(&pdev->dev, "Memory allocation failed for descriptor");
		return FUNC0(-ENOMEM);
	}

	/* Save the IDT PCIe-switch ports configuration */
	ndev->swcfg = (struct idt_89hpes_cfg *)id->driver_data;
	/* Save the PCI-device pointer inside the NTB device structure */
	ndev->ntb.pdev = pdev;

	/* Initialize spin locker of Doorbell, Message and GASA registers */
	FUNC5(&ndev->db_mask_lock);
	FUNC5(&ndev->msg_mask_lock);
	FUNC5(&ndev->gasa_lock);

	FUNC3(&pdev->dev, "IDT %s discovered", ndev->swcfg->name);

	FUNC1(&pdev->dev, "NTB device descriptor created");

	return ndev;
}