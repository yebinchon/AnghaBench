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
struct comedi_subdevice {int n_chan; } ;
struct comedi_device {int /*<<< orphan*/  class_dev; } ;
struct comedi_cmd {int chanlist_len; int /*<<< orphan*/ * chanlist; } ;

/* Variables and functions */
 unsigned int AREF_DIFF ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC4(struct comedi_device *dev,
				     struct comedi_subdevice *s,
				     struct comedi_cmd *cmd)
{
	unsigned int chan0 = FUNC1(cmd->chanlist[0]);
	unsigned int range0 = FUNC2(cmd->chanlist[0]);
	unsigned int aref0 = FUNC0(cmd->chanlist[0]);
	int i;

	for (i = 1; i < cmd->chanlist_len; i++) {
		unsigned int chan = FUNC1(cmd->chanlist[i]);
		unsigned int range = FUNC2(cmd->chanlist[i]);
		unsigned int aref = FUNC0(cmd->chanlist[i]);

		if (chan != chan0 + i) {
			FUNC3(dev->class_dev,
				"chanlist must be consecutive\n");
			return -EINVAL;
		}

		if (range != range0) {
			FUNC3(dev->class_dev,
				"chanlist must have the same range\n");
			return -EINVAL;
		}

		if (aref != aref0) {
			FUNC3(dev->class_dev,
				"chanlist must have the same reference\n");
			return -EINVAL;
		}

		if (aref0 == AREF_DIFF && chan > (s->n_chan / 2)) {
			FUNC3(dev->class_dev,
				"chanlist differential channel to large\n");
			return -EINVAL;
		}
	}
	return 0;
}