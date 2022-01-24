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
struct comedi_cmd {int chanlist_len; int /*<<< orphan*/ * chanlist; } ;
typedef  enum scan_mode { ____Placeholder_scan_mode } scan_mode ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
#define  MODE_MULT_CHAN_DOWN 131 
#define  MODE_MULT_CHAN_UP 130 
#define  MODE_SINGLE_CHAN 129 
#define  MODE_SINGLE_CHAN_INTERVAL 128 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int FUNC4 (struct comedi_cmd*) ; 

__attribute__((used)) static int FUNC5(struct comedi_device *dev,
				   struct comedi_subdevice *s,
				   struct comedi_cmd *cmd)
{
	enum scan_mode mode = FUNC4(cmd);
	unsigned int chan0 = FUNC1(cmd->chanlist[0]);
	unsigned int range0 = FUNC2(cmd->chanlist[0]);
	unsigned int aref0 = FUNC0(cmd->chanlist[0]);
	int i;

	for (i = 0; i < cmd->chanlist_len; i++) {
		unsigned int chan = FUNC1(cmd->chanlist[i]);
		unsigned int range = FUNC2(cmd->chanlist[i]);
		unsigned int aref = FUNC0(cmd->chanlist[i]);

		switch (mode) {
		case MODE_SINGLE_CHAN:
			break;
		case MODE_SINGLE_CHAN_INTERVAL:
			if (chan != chan0) {
				FUNC3(dev->class_dev,
					"channel scanning order specified in chanlist is not supported by hardware\n");
				return -EINVAL;
			}
			break;
		case MODE_MULT_CHAN_UP:
			if (chan != i) {
				FUNC3(dev->class_dev,
					"channel scanning order specified in chanlist is not supported by hardware\n");
				return -EINVAL;
			}
			break;
		case MODE_MULT_CHAN_DOWN:
			if (chan != (cmd->chanlist_len - i - 1)) {
				FUNC3(dev->class_dev,
					"channel scanning order specified in chanlist is not supported by hardware\n");
				return -EINVAL;
			}
			break;
		}

		if (range != range0) {
			FUNC3(dev->class_dev,
				"entries in chanlist must all have the same range\n");
			return -EINVAL;
		}

		if (aref != aref0) {
			FUNC3(dev->class_dev,
				"entries in chanlist must all have the same reference\n");
			return -EINVAL;
		}
	}

	return 0;
}