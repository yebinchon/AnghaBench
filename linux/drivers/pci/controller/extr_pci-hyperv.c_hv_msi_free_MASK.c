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
struct tran_int_desc {int dummy; } ;
struct pci_dev {int /*<<< orphan*/  devfn; } ;
struct msi_domain_info {struct hv_pcibus_device* data; } ;
struct msi_desc {int dummy; } ;
struct irq_domain {int dummy; } ;
struct irq_data {int /*<<< orphan*/ * chip_data; } ;
struct hv_pcibus_device {int dummy; } ;
struct hv_pci_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct hv_pci_dev* FUNC1 (struct hv_pcibus_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct hv_pci_dev*,struct tran_int_desc*) ; 
 struct tran_int_desc* FUNC3 (struct irq_data*) ; 
 struct msi_desc* FUNC4 (struct irq_data*) ; 
 struct irq_data* FUNC5 (struct irq_domain*,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (struct tran_int_desc*) ; 
 struct pci_dev* FUNC7 (struct msi_desc*) ; 
 int /*<<< orphan*/  FUNC8 (struct hv_pci_dev*) ; 

__attribute__((used)) static void FUNC9(struct irq_domain *domain, struct msi_domain_info *info,
			unsigned int irq)
{
	struct hv_pcibus_device *hbus;
	struct hv_pci_dev *hpdev;
	struct pci_dev *pdev;
	struct tran_int_desc *int_desc;
	struct irq_data *irq_data = FUNC5(domain, irq);
	struct msi_desc *msi = FUNC4(irq_data);

	pdev = FUNC7(msi);
	hbus = info->data;
	int_desc = FUNC3(irq_data);
	if (!int_desc)
		return;

	irq_data->chip_data = NULL;
	hpdev = FUNC1(hbus, FUNC0(pdev->devfn));
	if (!hpdev) {
		FUNC6(int_desc);
		return;
	}

	FUNC2(hpdev, int_desc);
	FUNC8(hpdev);
}