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
struct sony_pic_dev {scalar_t__ model; void* event_types; void* evport_offset; void* handle_irq; } ;
struct pci_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_DEVICE_ID_INTEL_82371AB_3 ; 
 int /*<<< orphan*/  PCI_DEVICE_ID_INTEL_ICH6_1 ; 
 int /*<<< orphan*/  PCI_DEVICE_ID_INTEL_ICH7_1 ; 
 int /*<<< orphan*/  PCI_DEVICE_ID_INTEL_ICH8_4 ; 
 int /*<<< orphan*/  PCI_DEVICE_ID_INTEL_ICH9_1 ; 
 int /*<<< orphan*/  PCI_VENDOR_ID_INTEL ; 
 scalar_t__ SONYPI_DEVICE_TYPE1 ; 
 scalar_t__ SONYPI_DEVICE_TYPE2 ; 
 void* SONYPI_DEVICE_TYPE3 ; 
 void* SONYPI_TYPE1_OFFSET ; 
 void* SONYPI_TYPE2_OFFSET ; 
 void* SONYPI_TYPE3_OFFSET ; 
 int /*<<< orphan*/  FUNC0 (struct pci_dev*) ; 
 struct pci_dev* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 void* type1_events ; 
 void* type2_events ; 
 void* type3_events ; 
 void* type3_handle_irq ; 

__attribute__((used)) static void FUNC3(struct sony_pic_dev *dev)
{
	struct pci_dev *pcidev;

	pcidev = FUNC1(PCI_VENDOR_ID_INTEL,
			PCI_DEVICE_ID_INTEL_82371AB_3, NULL);
	if (pcidev) {
		dev->model = SONYPI_DEVICE_TYPE1;
		dev->evport_offset = SONYPI_TYPE1_OFFSET;
		dev->event_types = type1_events;
		goto out;
	}

	pcidev = FUNC1(PCI_VENDOR_ID_INTEL,
			PCI_DEVICE_ID_INTEL_ICH6_1, NULL);
	if (pcidev) {
		dev->model = SONYPI_DEVICE_TYPE2;
		dev->evport_offset = SONYPI_TYPE2_OFFSET;
		dev->event_types = type2_events;
		goto out;
	}

	pcidev = FUNC1(PCI_VENDOR_ID_INTEL,
			PCI_DEVICE_ID_INTEL_ICH7_1, NULL);
	if (pcidev) {
		dev->model = SONYPI_DEVICE_TYPE3;
		dev->handle_irq = type3_handle_irq;
		dev->evport_offset = SONYPI_TYPE3_OFFSET;
		dev->event_types = type3_events;
		goto out;
	}

	pcidev = FUNC1(PCI_VENDOR_ID_INTEL,
			PCI_DEVICE_ID_INTEL_ICH8_4, NULL);
	if (pcidev) {
		dev->model = SONYPI_DEVICE_TYPE3;
		dev->handle_irq = type3_handle_irq;
		dev->evport_offset = SONYPI_TYPE3_OFFSET;
		dev->event_types = type3_events;
		goto out;
	}

	pcidev = FUNC1(PCI_VENDOR_ID_INTEL,
			PCI_DEVICE_ID_INTEL_ICH9_1, NULL);
	if (pcidev) {
		dev->model = SONYPI_DEVICE_TYPE3;
		dev->handle_irq = type3_handle_irq;
		dev->evport_offset = SONYPI_TYPE3_OFFSET;
		dev->event_types = type3_events;
		goto out;
	}

	/* default */
	dev->model = SONYPI_DEVICE_TYPE2;
	dev->evport_offset = SONYPI_TYPE2_OFFSET;
	dev->event_types = type2_events;

out:
	FUNC0(pcidev);

	FUNC2("detected Type%d model\n",
		dev->model == SONYPI_DEVICE_TYPE1 ? 1 :
		dev->model == SONYPI_DEVICE_TYPE2 ? 2 : 3);
}