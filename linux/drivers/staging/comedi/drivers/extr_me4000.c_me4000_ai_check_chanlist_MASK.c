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
struct comedi_subdevice {int subdev_flags; int n_chan; } ;
struct comedi_device {int /*<<< orphan*/  class_dev; } ;
struct comedi_cmd {int chanlist_len; int /*<<< orphan*/ * chanlist; } ;

/* Variables and functions */
 unsigned int AREF_DIFF ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int SDF_DIFF ; 
 int /*<<< orphan*/  FUNC3 (struct comedi_subdevice*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC6(struct comedi_device *dev,
				    struct comedi_subdevice *s,
				    struct comedi_cmd *cmd)
{
	unsigned int aref0 = FUNC0(cmd->chanlist[0]);
	int i;

	for (i = 0; i < cmd->chanlist_len; i++) {
		unsigned int chan = FUNC1(cmd->chanlist[i]);
		unsigned int range = FUNC2(cmd->chanlist[i]);
		unsigned int aref = FUNC0(cmd->chanlist[i]);

		if (aref != aref0) {
			FUNC4(dev->class_dev,
				"Mode is not equal for all entries\n");
			return -EINVAL;
		}

		if (aref == AREF_DIFF) {
			if (!(s->subdev_flags & SDF_DIFF)) {
				FUNC5(dev->class_dev,
					"Differential inputs are not available\n");
				return -EINVAL;
			}

			if (chan >= (s->n_chan / 2)) {
				FUNC4(dev->class_dev,
					"Channel number to high\n");
				return -EINVAL;
			}

			if (!FUNC3(s, range)) {
				FUNC4(dev->class_dev,
					"Bipolar is not selected in differential mode\n");
				return -EINVAL;
			}
		}
	}

	return 0;
}