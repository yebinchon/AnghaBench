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
struct pcmcia_device {int config_flags; int /*<<< orphan*/  irq; struct comedi_device* priv; TYPE_1__** resource; } ;
struct ni_board_struct {int /*<<< orphan*/  name; } ;
struct comedi_device {int /*<<< orphan*/  irq; int /*<<< orphan*/  iobase; int /*<<< orphan*/  board_name; struct ni_board_struct const* board_ptr; } ;
struct TYPE_2__ {int /*<<< orphan*/  start; } ;

/* Variables and functions */
 int CONF_AUTO_SET_IO ; 
 int CONF_ENABLE_IRQ ; 
 int ENODEV ; 
 int FUNC0 (struct comedi_device*,int /*<<< orphan*/ ) ; 
 struct pcmcia_device* FUNC1 (struct comedi_device*) ; 
 int /*<<< orphan*/  mio_pcmcia_config_loop ; 
 int FUNC2 (struct comedi_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  ni_E_interrupt ; 
 int FUNC3 (struct comedi_device*) ; 
 struct ni_board_struct* FUNC4 (struct comedi_device*,struct pcmcia_device*) ; 
 int FUNC5 (struct pcmcia_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct comedi_device *dev,
			      unsigned long context)
{
	struct pcmcia_device *link = FUNC1(dev);
	static const struct ni_board_struct *board;
	int ret;

	board = FUNC4(dev, link);
	if (!board)
		return -ENODEV;
	dev->board_ptr = board;
	dev->board_name = board->name;

	link->config_flags |= CONF_AUTO_SET_IO | CONF_ENABLE_IRQ;
	ret = FUNC0(dev, mio_pcmcia_config_loop);
	if (ret)
		return ret;
	dev->iobase = link->resource[0]->start;

	link->priv = dev;
	ret = FUNC5(link, ni_E_interrupt);
	if (ret)
		return ret;
	dev->irq = link->irq;

	ret = FUNC3(dev);
	if (ret)
		return ret;

	return FUNC2(dev, 0, 1);
}