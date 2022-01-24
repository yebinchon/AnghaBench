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

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC2(struct comedi_device *dev,
					 struct comedi_subdevice *s,
					 struct comedi_cmd *cmd)
{
	unsigned int chan0 = FUNC0(cmd->chanlist[0]);
	int i;

	for (i = 1; i < cmd->chanlist_len; i++) {
		unsigned int chan = FUNC0(cmd->chanlist[i]);

		if (chan != (chan0 + i)) {
			FUNC1(dev->class_dev,
				"chanlist must use consecutive channels\n");
			return -EINVAL;
		}
	}

	return 0;
}