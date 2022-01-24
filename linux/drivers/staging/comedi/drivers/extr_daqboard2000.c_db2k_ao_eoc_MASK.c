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
struct comedi_insn {int /*<<< orphan*/  chanspec; } ;
struct comedi_device {scalar_t__ mmio; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (unsigned int) ; 
 scalar_t__ DB2K_REG_DAC_STATUS ; 
 int EBUSY ; 
 unsigned int FUNC2 (scalar_t__) ; 

__attribute__((used)) static int FUNC3(struct comedi_device *dev, struct comedi_subdevice *s,
		       struct comedi_insn *insn, unsigned long context)
{
	unsigned int chan = FUNC0(insn->chanspec);
	unsigned int status;

	status = FUNC2(dev->mmio + DB2K_REG_DAC_STATUS);
	if ((status & FUNC1(chan)) == 0)
		return 0;
	return -EBUSY;
}