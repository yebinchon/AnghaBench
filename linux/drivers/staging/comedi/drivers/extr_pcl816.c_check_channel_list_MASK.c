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
struct comedi_device {int /*<<< orphan*/  class_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 unsigned int FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,unsigned int,unsigned int,unsigned int,unsigned int,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC5(struct comedi_device *dev,
			      struct comedi_subdevice *s,
			      unsigned int *chanlist,
			      unsigned int chanlen)
{
	unsigned int chansegment[16];
	unsigned int i, nowmustbechan, seglen;

	/*  correct channel and range number check itself comedi/range.c */
	if (chanlen < 1) {
		FUNC4(dev->class_dev, "range/channel list is empty!\n");
		return 0;
	}

	if (chanlen > 1) {
		/*  first channel is every time ok */
		chansegment[0] = chanlist[0];
		for (i = 1, seglen = 1; i < chanlen; i++, seglen++) {
			/*  we detect loop, this must by finish */
			if (chanlist[0] == chanlist[i])
				break;
			nowmustbechan =
			    (FUNC1(chansegment[i - 1]) + 1) % chanlen;
			if (nowmustbechan != FUNC1(chanlist[i])) {
				/*  channel list isn't continuous :-( */
				FUNC3(dev->class_dev,
					"channel list must be continuous! chanlist[%i]=%d but must be %d or %d!\n",
					i, FUNC1(chanlist[i]), nowmustbechan,
					FUNC1(chanlist[0]));
				return 0;
			}
			/*  well, this is next correct channel in list */
			chansegment[i] = chanlist[i];
		}

		/*  check whole chanlist */
		for (i = 0; i < chanlen; i++) {
			if (chanlist[i] != chansegment[i % seglen]) {
				FUNC3(dev->class_dev,
					"bad channel or range number! chanlist[%i]=%d,%d,%d and not %d,%d,%d!\n",
					i, FUNC1(chansegment[i]),
					FUNC2(chansegment[i]),
					FUNC0(chansegment[i]),
					FUNC1(chanlist[i % seglen]),
					FUNC2(chanlist[i % seglen]),
					FUNC0(chansegment[i % seglen]));
				return 0;	/*  chan/gain list is strange */
			}
		}
	} else {
		seglen = 1;
	}

	return seglen;	/*  we can serve this with MUX logic */
}