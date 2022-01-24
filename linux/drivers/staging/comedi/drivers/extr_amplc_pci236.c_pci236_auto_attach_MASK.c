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
struct pc236_private {void* lcr_iobase; } ;
struct comedi_device {int /*<<< orphan*/  board_name; TYPE_1__* board_ptr; int /*<<< orphan*/  class_dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 int FUNC0 (struct comedi_device*,unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct pc236_private* FUNC1 (struct comedi_device*,int) ; 
 int FUNC2 (struct comedi_device*) ; 
 struct pci_dev* FUNC3 (struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 TYPE_1__ pc236_pci_board ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*) ; 
 void* FUNC6 (struct pci_dev*,int) ; 

__attribute__((used)) static int FUNC7(struct comedi_device *dev,
			      unsigned long context_unused)
{
	struct pci_dev *pci_dev = FUNC3(dev);
	struct pc236_private *devpriv;
	unsigned long iobase;
	int ret;

	FUNC4(dev->class_dev, "amplc_pci236: attach pci %s\n",
		 FUNC5(pci_dev));

	devpriv = FUNC1(dev, sizeof(*devpriv));
	if (!devpriv)
		return -ENOMEM;

	dev->board_ptr = &pc236_pci_board;
	dev->board_name = pc236_pci_board.name;
	ret = FUNC2(dev);
	if (ret)
		return ret;

	devpriv->lcr_iobase = FUNC6(pci_dev, 1);
	iobase = FUNC6(pci_dev, 2);
	return FUNC0(dev, iobase, pci_dev->irq,
					 IRQF_SHARED);
}