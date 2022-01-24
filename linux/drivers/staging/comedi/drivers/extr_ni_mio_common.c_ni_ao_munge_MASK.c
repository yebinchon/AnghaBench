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
struct comedi_subdevice {TYPE_1__* async; } ;
struct comedi_device {int dummy; } ;
struct comedi_cmd {unsigned int chanlist_len; int /*<<< orphan*/ * chanlist; } ;
typedef  int /*<<< orphan*/  __le16 ;
struct TYPE_2__ {struct comedi_cmd cmd; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (struct comedi_subdevice*,unsigned int) ; 
 unsigned short FUNC2 (struct comedi_subdevice*,unsigned short) ; 
 scalar_t__ FUNC3 (struct comedi_subdevice*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned short) ; 

__attribute__((used)) static void FUNC5(struct comedi_device *dev, struct comedi_subdevice *s,
			void *data, unsigned int num_bytes,
			unsigned int chan_index)
{
	struct comedi_cmd *cmd = &s->async->cmd;
	unsigned int nsamples = FUNC1(s, num_bytes);
	unsigned short *array = data;
	unsigned int i;
#ifdef PCIDMA
	__le16 buf, *barray = data;
#endif

	for (i = 0; i < nsamples; i++) {
		unsigned int range = FUNC0(cmd->chanlist[chan_index]);
		unsigned short val = array[i];

		/*
		 * Munge data from unsigned to two's complement for
		 * bipolar ranges.
		 */
		if (FUNC3(s, range))
			val = FUNC2(s, val);
#ifdef PCIDMA
		buf = cpu_to_le16(val);
		barray[i] = buf;
#else
		array[i] = val;
#endif
		chan_index++;
		chan_index %= cmd->chanlist_len;
	}
}