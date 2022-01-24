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
typedef  int u8 ;
struct sym_device {int host_id; } ;
struct pci_dev {int vendor; int device; int /*<<< orphan*/  bus; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pci_dev*) ; 
 struct pci_dev* FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,int,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*,int,int) ; 

__attribute__((used)) static void FUNC4(struct pci_dev *pdev, struct sym_device *sym_dev)
{
	int slot;
	u8 tmp;

	for (slot = 0; slot < 256; slot++) {
		struct pci_dev *memc = FUNC1(pdev->bus, slot);

		if (!memc || memc->vendor != 0x101a || memc->device == 0x0009) {
			FUNC0(memc);
			continue;
		}

		/* bit 1: allow individual 875 configuration */
		FUNC2(memc, 0x44, &tmp);
		if ((tmp & 0x2) == 0) {
			tmp |= 0x2;
			FUNC3(memc, 0x44, tmp);
		}

		/* bit 2: drive individual 875 interrupts to the bus */
		FUNC2(memc, 0x45, &tmp);
		if ((tmp & 0x4) == 0) {
			tmp |= 0x4;
			FUNC3(memc, 0x45, tmp);
		}

		FUNC0(memc);
		break;
	}

	FUNC2(pdev, 0x84, &tmp);
	sym_dev->host_id = tmp;
}