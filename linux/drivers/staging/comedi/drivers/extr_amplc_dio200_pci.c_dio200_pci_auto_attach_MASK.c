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
struct pci_dev {int /*<<< orphan*/  irq; } ;
struct dio200_board {unsigned int mainbar; scalar_t__ is_pcie; int /*<<< orphan*/  name; } ;
struct comedi_device {int /*<<< orphan*/  iobase; int /*<<< orphan*/  class_dev; int /*<<< orphan*/  mmio; int /*<<< orphan*/  board_name; TYPE_1__* driver; struct dio200_board const* board_ptr; } ;
struct TYPE_2__ {int /*<<< orphan*/  driver_name; } ;

/* Variables and functions */
 unsigned long FUNC0 (struct dio200_board*) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int IORESOURCE_MEM ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 int FUNC1 (struct comedi_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct comedi_device*) ; 
 struct pci_dev* FUNC3 (struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct dio200_board* dio200_pci_boards ; 
 int FUNC6 (struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct pci_dev*,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (struct pci_dev*) ; 
 int FUNC9 (struct pci_dev*,unsigned int) ; 
 int /*<<< orphan*/  FUNC10 (struct pci_dev*,unsigned int) ; 

__attribute__((used)) static int FUNC11(struct comedi_device *dev,
				  unsigned long context_model)
{
	struct pci_dev *pci_dev = FUNC3(dev);
	const struct dio200_board *board = NULL;
	unsigned int bar;
	int ret;

	if (context_model < FUNC0(dio200_pci_boards))
		board = &dio200_pci_boards[context_model];
	if (!board)
		return -EINVAL;
	dev->board_ptr = board;
	dev->board_name = board->name;

	FUNC5(dev->class_dev, "%s: attach pci %s (%s)\n",
		 dev->driver->driver_name, FUNC8(pci_dev), dev->board_name);

	ret = FUNC2(dev);
	if (ret)
		return ret;

	bar = board->mainbar;
	if (FUNC9(pci_dev, bar) & IORESOURCE_MEM) {
		dev->mmio = FUNC7(pci_dev, bar);
		if (!dev->mmio) {
			FUNC4(dev->class_dev,
				"error! cannot remap registers\n");
			return -ENOMEM;
		}
	} else {
		dev->iobase = FUNC10(pci_dev, bar);
	}

	if (board->is_pcie) {
		ret = FUNC6(dev);
		if (ret < 0)
			return ret;
	}

	return FUNC1(dev, pci_dev->irq, IRQF_SHARED);
}