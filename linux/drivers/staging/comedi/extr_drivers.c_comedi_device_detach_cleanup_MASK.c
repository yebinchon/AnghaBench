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
struct comedi_subdevice {struct comedi_subdevice* readback; struct comedi_subdevice* async; struct comedi_subdevice* private; } ;
struct comedi_device {int n_subdevices; int ioenabled; int /*<<< orphan*/ * close; int /*<<< orphan*/ * open; int /*<<< orphan*/ * write_subdev; int /*<<< orphan*/ * read_subdev; scalar_t__ irq; scalar_t__ iolen; scalar_t__ iobase; int /*<<< orphan*/ * mmio; int /*<<< orphan*/ * board_ptr; int /*<<< orphan*/ * board_name; int /*<<< orphan*/ * driver; struct comedi_subdevice* pacer; struct comedi_subdevice* private; struct comedi_subdevice* subdevices; int /*<<< orphan*/  mutex; int /*<<< orphan*/  attach_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct comedi_device*,struct comedi_subdevice*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct comedi_subdevice*) ; 
 int /*<<< orphan*/  FUNC2 (struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct comedi_subdevice*) ; 
 int /*<<< orphan*/  FUNC4 (struct comedi_subdevice*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct comedi_device *dev)
{
	int i;
	struct comedi_subdevice *s;

	FUNC5(&dev->attach_lock);
	FUNC5(&dev->mutex);
	if (dev->subdevices) {
		for (i = 0; i < dev->n_subdevices; i++) {
			s = &dev->subdevices[i];
			if (FUNC1(s))
				FUNC4(s->private);
			FUNC3(s);
			if (s->async) {
				FUNC0(dev, s, 0);
				FUNC4(s->async);
			}
			FUNC4(s->readback);
		}
		FUNC4(dev->subdevices);
		dev->subdevices = NULL;
		dev->n_subdevices = 0;
	}
	FUNC4(dev->private);
	FUNC4(dev->pacer);
	dev->private = NULL;
	dev->pacer = NULL;
	dev->driver = NULL;
	dev->board_name = NULL;
	dev->board_ptr = NULL;
	dev->mmio = NULL;
	dev->iobase = 0;
	dev->iolen = 0;
	dev->ioenabled = false;
	dev->irq = 0;
	dev->read_subdev = NULL;
	dev->write_subdev = NULL;
	dev->open = NULL;
	dev->close = NULL;
	FUNC2(dev);
}