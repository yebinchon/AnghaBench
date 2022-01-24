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
struct pci_dev {int /*<<< orphan*/  irq; } ;
struct labpc_boardinfo {int /*<<< orphan*/  name; } ;
struct comedi_device {int /*<<< orphan*/  mmio; int /*<<< orphan*/  board_name; struct labpc_boardinfo const* board_ptr; } ;

/* Variables and functions */
 unsigned long FUNC0 (struct labpc_boardinfo*) ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 int FUNC1 (struct comedi_device*) ; 
 struct pci_dev* FUNC2 (struct comedi_device*) ; 
 int FUNC3 (struct comedi_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct labpc_boardinfo* labpc_pci_boards ; 
 int FUNC4 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*,int) ; 

__attribute__((used)) static int FUNC6(struct comedi_device *dev,
				 unsigned long context)
{
	struct pci_dev *pcidev = FUNC2(dev);
	const struct labpc_boardinfo *board = NULL;
	int ret;

	if (context < FUNC0(labpc_pci_boards))
		board = &labpc_pci_boards[context];
	if (!board)
		return -ENODEV;
	dev->board_ptr = board;
	dev->board_name = board->name;

	ret = FUNC1(dev);
	if (ret)
		return ret;

	ret = FUNC4(pcidev);
	if (ret)
		return ret;

	dev->mmio = FUNC5(pcidev, 1);
	if (!dev->mmio)
		return -ENOMEM;

	return FUNC3(dev, pcidev->irq, IRQF_SHARED);
}