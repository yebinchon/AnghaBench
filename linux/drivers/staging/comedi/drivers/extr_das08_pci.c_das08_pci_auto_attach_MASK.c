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
struct das08_private_struct {int dummy; } ;
struct comedi_device {int /*<<< orphan*/  iobase; int /*<<< orphan*/ * board_ptr; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct das08_private_struct* FUNC0 (struct comedi_device*,int) ; 
 int FUNC1 (struct comedi_device*) ; 
 struct pci_dev* FUNC2 (struct comedi_device*) ; 
 int FUNC3 (struct comedi_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * das08_pci_boards ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*,int) ; 

__attribute__((used)) static int FUNC5(struct comedi_device *dev,
				 unsigned long context_unused)
{
	struct pci_dev *pdev = FUNC2(dev);
	struct das08_private_struct *devpriv;
	int ret;

	devpriv = FUNC0(dev, sizeof(*devpriv));
	if (!devpriv)
		return -ENOMEM;

	/* The das08 driver needs the board_ptr */
	dev->board_ptr = &das08_pci_boards[0];

	ret = FUNC1(dev);
	if (ret)
		return ret;
	dev->iobase = FUNC4(pdev, 2);

	return FUNC3(dev, dev->iobase);
}