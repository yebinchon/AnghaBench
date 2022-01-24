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
struct pci_dev {int dummy; } ;
struct pci9118_boardinfo {int /*<<< orphan*/  name; } ;
struct comedi_device {int /*<<< orphan*/  board_name; struct pci9118_boardinfo const* board_ptr; } ;

/* Variables and functions */
 unsigned long FUNC0 (struct pci9118_boardinfo*) ; 
 int ENODEV ; 
 struct pci_dev* FUNC1 (struct comedi_device*) ; 
 struct pci9118_boardinfo* pci9118_boards ; 
 int FUNC2 (struct comedi_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*) ; 

__attribute__((used)) static int FUNC4(struct comedi_device *dev,
			       unsigned long context)
{
	struct pci_dev *pcidev = FUNC1(dev);
	const struct pci9118_boardinfo *board = NULL;

	if (context < FUNC0(pci9118_boards))
		board = &pci9118_boards[context];
	if (!board)
		return -ENODEV;
	dev->board_ptr = board;
	dev->board_name = board->name;

	/*
	 * Need to 'get' the PCI device to match the 'put' in pci9118_detach().
	 * (The 'put' also matches the implicit 'get' by pci9118_find_pci().)
	 */
	FUNC3(pcidev);
	/* no external mux, no sample-hold delay */
	return FUNC2(dev, 0, 0);
}