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
struct comedi_subdevice {unsigned int n_chan; } ;
struct comedi_device {int /*<<< orphan*/  class_dev; } ;
struct comedi_cmd {int chanlist_len; int /*<<< orphan*/ * chanlist; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC3(struct comedi_device *dev,
				     struct comedi_subdevice *s,
				     struct comedi_cmd *cmd)
{
	unsigned int chan0 = FUNC0(cmd->chanlist[0]);
	unsigned int range0 = FUNC1(cmd->chanlist[0]);
	int i;

	for (i = 1; i < cmd->chanlist_len; i++) {
		unsigned int chan = FUNC0(cmd->chanlist[i]);
		unsigned int range = FUNC1(cmd->chanlist[i]);

		if (chan != (chan0 + i) % s->n_chan) {
			FUNC2(dev->class_dev,
				"entries in chanlist must be consecutive channels, counting upwards\n");
			return -EINVAL;
		}
		if (range != range0) {
			FUNC2(dev->class_dev,
				"entries in chanlist must all have the same gain\n");
			return -EINVAL;
		}
	}

	return 0;
}