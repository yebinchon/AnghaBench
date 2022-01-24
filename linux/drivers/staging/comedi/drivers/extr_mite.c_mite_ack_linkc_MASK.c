#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct mite_channel {int /*<<< orphan*/  channel; struct mite* mite; } ;
struct mite {scalar_t__ mmio; } ;
struct comedi_subdevice {TYPE_1__* async; TYPE_2__* device; } ;
struct TYPE_4__ {int /*<<< orphan*/  class_dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  events; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHOR_CLRLC ; 
 unsigned int CHSR_LINKC ; 
 unsigned int CHSR_XFERR ; 
 int /*<<< orphan*/  COMEDI_CB_ERROR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,unsigned int) ; 
 unsigned int FUNC2 (struct mite_channel*) ; 
 int /*<<< orphan*/  FUNC3 (struct mite_channel*,struct comedi_subdevice*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 

void FUNC5(struct mite_channel *mite_chan,
		    struct comedi_subdevice *s,
		    bool sync)
{
	struct mite *mite = mite_chan->mite;
	unsigned int status;

	status = FUNC2(mite_chan);
	if (status & CHSR_LINKC) {
		FUNC4(CHOR_CLRLC, mite->mmio + FUNC0(mite_chan->channel));
		sync = true;
	}
	if (sync)
		FUNC3(mite_chan, s);

	if (status & CHSR_XFERR) {
		FUNC1(s->device->class_dev,
			"mite: transfer error %08x\n", status);
		s->async->events |= COMEDI_CB_ERROR;
	}
}