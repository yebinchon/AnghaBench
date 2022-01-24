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
struct comedi_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMEDI_TIMEOUT_MS ; 
 int EBUSY ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  FUNC0 () ; 
 unsigned long jiffies ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (unsigned long,unsigned long) ; 

int FUNC3(struct comedi_device *dev,
		   struct comedi_subdevice *s,
		   struct comedi_insn *insn,
		   int (*cb)(struct comedi_device *dev,
			     struct comedi_subdevice *s,
			     struct comedi_insn *insn,
			     unsigned long context),
		   unsigned long context)
{
	unsigned long timeout = jiffies + FUNC1(COMEDI_TIMEOUT_MS);
	int ret;

	while (FUNC2(jiffies, timeout)) {
		ret = cb(dev, s, insn, context);
		if (ret != -EBUSY)
			return ret;	/* success (0) or non EBUSY errno */
		FUNC0();
	}
	return -ETIMEDOUT;
}