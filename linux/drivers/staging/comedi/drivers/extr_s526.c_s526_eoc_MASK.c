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
struct comedi_insn {int dummy; } ;
struct comedi_device {scalar_t__ iobase; } ;

/* Variables and functions */
 int EBUSY ; 
 scalar_t__ S526_INT_STATUS_REG ; 
 unsigned int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,scalar_t__) ; 

__attribute__((used)) static int FUNC2(struct comedi_device *dev,
		    struct comedi_subdevice *s,
		    struct comedi_insn *insn,
		    unsigned long context)
{
	unsigned int status;

	status = FUNC0(dev->iobase + S526_INT_STATUS_REG);
	if (status & context) {
		/* we got our eoc event, clear it */
		FUNC1(context, dev->iobase + S526_INT_STATUS_REG);
		return 0;
	}
	return -EBUSY;
}