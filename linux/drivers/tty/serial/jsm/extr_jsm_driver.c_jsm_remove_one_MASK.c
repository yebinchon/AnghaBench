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
struct pci_dev {int device; } ;
struct jsm_board {int maxports; struct jsm_board** channels; struct jsm_board* ch_equeue; struct jsm_board* ch_rqueue; int /*<<< orphan*/  re_map_membase; int /*<<< orphan*/  irq; int /*<<< orphan*/  iobase; } ;

/* Variables and functions */
#define  PCI_DEVICE_ID_CLASSIC_4 131 
#define  PCI_DEVICE_ID_CLASSIC_4_422 130 
#define  PCI_DEVICE_ID_CLASSIC_8 129 
#define  PCI_DEVICE_ID_CLASSIC_8_422 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct jsm_board*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct jsm_board*) ; 
 int /*<<< orphan*/  FUNC3 (struct jsm_board*) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*) ; 
 struct jsm_board* FUNC6 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct pci_dev*) ; 

__attribute__((used)) static void FUNC8(struct pci_dev *pdev)
{
	struct jsm_board *brd = FUNC6(pdev);
	int i = 0;

	switch (pdev->device) {
	case PCI_DEVICE_ID_CLASSIC_4:
	case PCI_DEVICE_ID_CLASSIC_4_422:
	case PCI_DEVICE_ID_CLASSIC_8:
	case PCI_DEVICE_ID_CLASSIC_8_422:
		/* Tell card not to interrupt anymore. */
		FUNC4(0x0, brd->iobase + 0x4c);
		break;
	default:
		break;
	}

	FUNC2(brd);

	FUNC0(brd->irq, brd);
	FUNC1(brd->re_map_membase);

	/* Free all allocated channels structs */
	for (i = 0; i < brd->maxports; i++) {
		if (brd->channels[i]) {
			FUNC3(brd->channels[i]->ch_rqueue);
			FUNC3(brd->channels[i]->ch_equeue);
			FUNC3(brd->channels[i]);
		}
	}

	FUNC7(pdev);
	FUNC5(pdev);
	FUNC3(brd);
}