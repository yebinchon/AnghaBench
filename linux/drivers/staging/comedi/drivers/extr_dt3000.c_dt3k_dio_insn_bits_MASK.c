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
struct comedi_subdevice {int /*<<< orphan*/  state; } ;
struct comedi_insn {int n; } ;
struct comedi_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DPR_SUBSYS_DIN ; 
 int /*<<< orphan*/  DPR_SUBSYS_DOUT ; 
 scalar_t__ FUNC0 (struct comedi_subdevice*,unsigned int*) ; 
 unsigned int FUNC1 (struct comedi_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct comedi_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct comedi_device *dev,
			      struct comedi_subdevice *s,
			      struct comedi_insn *insn,
			      unsigned int *data)
{
	if (FUNC0(s, data))
		FUNC2(dev, DPR_SUBSYS_DOUT, 0, s->state);

	data[1] = FUNC1(dev, DPR_SUBSYS_DIN, 0, 0);

	return insn->n;
}