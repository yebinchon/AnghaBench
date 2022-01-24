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
struct comedi_subdevice {int dummy; } ;
struct comedi_device {scalar_t__ iobase; } ;

/* Variables and functions */
 unsigned int PARPORT_CTRL_IRQ_ENA ; 
 scalar_t__ PARPORT_CTRL_REG ; 
 unsigned int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,scalar_t__) ; 

__attribute__((used)) static int FUNC2(struct comedi_device *dev,
			    struct comedi_subdevice *s)
{
	unsigned int ctrl;

	ctrl = FUNC0(dev->iobase + PARPORT_CTRL_REG);
	ctrl |= PARPORT_CTRL_IRQ_ENA;
	FUNC1(ctrl, dev->iobase + PARPORT_CTRL_REG);

	return 0;
}