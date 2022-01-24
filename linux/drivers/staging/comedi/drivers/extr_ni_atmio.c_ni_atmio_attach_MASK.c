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
struct pnp_dev {int /*<<< orphan*/  dev; } ;
struct ni_board_struct {int /*<<< orphan*/  name; } ;
struct comedi_device {unsigned int irq; int /*<<< orphan*/  board_name; struct ni_board_struct const* board_ptr; } ;
struct comedi_devconfig {unsigned long* options; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int FUNC0 (struct comedi_device*,unsigned long,int) ; 
 int /*<<< orphan*/  FUNC1 (struct comedi_device*,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct comedi_device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ni_E_interrupt ; 
 int FUNC3 (struct comedi_device*) ; 
 struct ni_board_struct* FUNC4 (struct comedi_device*) ; 
 int* ni_irqpin ; 
 int FUNC5 (struct pnp_dev**) ; 
 unsigned int FUNC6 (struct pnp_dev*,int /*<<< orphan*/ ) ; 
 unsigned long FUNC7 (struct pnp_dev*,int /*<<< orphan*/ ) ; 
 int FUNC8 (unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct comedi_device*) ; 

__attribute__((used)) static int FUNC9(struct comedi_device *dev,
			   struct comedi_devconfig *it)
{
	const struct ni_board_struct *board;
	struct pnp_dev *isapnp_dev;
	int ret;
	unsigned long iobase;
	unsigned int irq;

	ret = FUNC3(dev);
	if (ret)
		return ret;

	iobase = it->options[0];
	irq = it->options[1];
	isapnp_dev = NULL;
	if (iobase == 0) {
		ret = FUNC5(&isapnp_dev);
		if (ret < 0)
			return ret;

		iobase = FUNC7(isapnp_dev, 0);
		irq = FUNC6(isapnp_dev, 0);
		FUNC1(dev, &isapnp_dev->dev);
	}

	ret = FUNC0(dev, iobase, 0x20);
	if (ret)
		return ret;

	board = FUNC4(dev);
	if (!board)
		return -ENODEV;
	dev->board_ptr = board;
	dev->board_name = board->name;

	/* irq stuff */

	if (irq != 0) {
		if (irq > 15 || ni_irqpin[irq] == -1)
			return -EINVAL;
		ret = FUNC8(irq, ni_E_interrupt, 0,
				  dev->board_name, dev);
		if (ret < 0)
			return -EINVAL;
		dev->irq = irq;
	}

	/* generic E series stuff in ni_mio_common.c */

	ret = FUNC2(dev, ni_irqpin[dev->irq], 0);
	if (ret < 0)
		return ret;

	return 0;
}