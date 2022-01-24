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
struct comedi_subdevice {struct addi_watchdog_private* private; } ;
struct comedi_insn {int n; } ;
struct comedi_device {int /*<<< orphan*/  class_dev; } ;
struct addi_watchdog_private {int wdog_ctrl; scalar_t__ iobase; } ;

/* Variables and functions */
 scalar_t__ ADDI_TCW_CTRL_REG ; 
 int ADDI_TCW_CTRL_TRIG ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC2(struct comedi_device *dev,
				    struct comedi_subdevice *s,
				    struct comedi_insn *insn,
				    unsigned int *data)
{
	struct addi_watchdog_private *spriv = s->private;
	int i;

	if (spriv->wdog_ctrl == 0) {
		FUNC0(dev->class_dev, "watchdog is disabled\n");
		return -EINVAL;
	}

	/* "ping" the watchdog */
	for (i = 0; i < insn->n; i++) {
		FUNC1(spriv->wdog_ctrl | ADDI_TCW_CTRL_TRIG,
		     spriv->iobase + ADDI_TCW_CTRL_REG);
	}

	return insn->n;
}