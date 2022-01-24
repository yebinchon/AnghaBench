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
struct comedi_device {int dummy; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct comedi_device*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct comedi_device*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct comedi_device*,unsigned int,int) ; 

__attribute__((used)) static int FUNC4(struct comedi_device *dev,
			       struct comedi_subdevice *s,
			       struct comedi_insn *insn, unsigned int *data)
{
	unsigned int chan = FUNC0(insn->chanspec);

	/* Set the preload register */
	FUNC1(dev, chan, data[0]);

	/*
	 * Software index pulse forces the preload register to load
	 * into the counter
	 */
	FUNC3(dev, chan, 0);
	FUNC2(dev, chan);
	FUNC3(dev, chan, 2);

	return 1;
}