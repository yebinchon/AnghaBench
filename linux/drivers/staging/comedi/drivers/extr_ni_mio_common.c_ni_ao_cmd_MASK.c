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
struct ni_private {int ao_needs_arming; int /*<<< orphan*/  ao_mite_ring; } ;
struct comedi_subdevice {TYPE_1__* async; } ;
struct comedi_device {scalar_t__ irq; int /*<<< orphan*/  class_dev; struct ni_private* private; } ;
struct comedi_cmd {int dummy; } ;
struct TYPE_2__ {struct comedi_cmd cmd; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct comedi_device*,struct comedi_cmd const*) ; 
 int /*<<< orphan*/  FUNC2 (struct comedi_device*,struct comedi_subdevice*) ; 
 int /*<<< orphan*/  FUNC3 (struct comedi_device*,struct comedi_cmd const*) ; 
 int /*<<< orphan*/  FUNC4 (struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct comedi_device*,struct comedi_subdevice*) ; 
 int /*<<< orphan*/  FUNC6 (struct comedi_device*,struct comedi_cmd const*) ; 
 int /*<<< orphan*/  FUNC7 (struct comedi_device*,struct comedi_cmd const*) ; 
 int /*<<< orphan*/  FUNC8 (struct comedi_device*,struct comedi_cmd const*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,struct comedi_subdevice*,struct comedi_cmd const*,int) ; 

__attribute__((used)) static int FUNC10(struct comedi_device *dev, struct comedi_subdevice *s)
{
	struct ni_private *devpriv = dev->private;
	const struct comedi_cmd *cmd = &s->async->cmd;

	if (dev->irq == 0) {
		FUNC0(dev->class_dev, "cannot run command without an irq");
		return -EIO;
	}

	/* ni_ao_reset should have already been done */
	FUNC1(dev, cmd);
	/* clearing fifo and preload happens elsewhere */

	FUNC7(dev, cmd);
	FUNC3(dev, cmd);
	FUNC8(dev, cmd);
	FUNC2(dev, s);
	FUNC6(dev, cmd);
	FUNC4(dev);
	FUNC9(devpriv->ao_mite_ring, s, cmd, 0x00ffffff);
	FUNC5(dev, s);

	/*
	 * arm(ing) must happen later so that DMA can be setup and DACs
	 * preloaded with the actual output buffer before starting.
	 *
	 * start(ing) must happen _after_ arming is completed.  Starting can be
	 * done either via ni_ao_inttrig, or via an external trigger.
	 *
	 * **Currently, ni_ao_inttrig will automatically attempt a call to
	 * ni_ao_arm if the device still needs arming at that point.  This
	 * allows backwards compatibility.
	 */
	devpriv->ao_needs_arming = 1;
	return 0;
}