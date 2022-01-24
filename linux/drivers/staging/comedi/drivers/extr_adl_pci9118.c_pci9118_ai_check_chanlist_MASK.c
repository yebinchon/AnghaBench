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
struct pci9118_private {int /*<<< orphan*/  usemux; } ;
struct comedi_subdevice {int n_chan; } ;
struct comedi_device {int /*<<< orphan*/  class_dev; struct pci9118_private* private; } ;
struct comedi_cmd {int chanlist_len; int /*<<< orphan*/ * chanlist; } ;

/* Variables and functions */
 unsigned int AREF_DIFF ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 scalar_t__ FUNC3 (struct comedi_subdevice*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC5(struct comedi_device *dev,
				     struct comedi_subdevice *s,
				     struct comedi_cmd *cmd)
{
	struct pci9118_private *devpriv = dev->private;
	unsigned int range0 = FUNC2(cmd->chanlist[0]);
	unsigned int aref0 = FUNC0(cmd->chanlist[0]);
	int i;

	/* single channel scans are always ok */
	if (cmd->chanlist_len == 1)
		return 0;

	for (i = 1; i < cmd->chanlist_len; i++) {
		unsigned int chan = FUNC1(cmd->chanlist[i]);
		unsigned int range = FUNC2(cmd->chanlist[i]);
		unsigned int aref = FUNC0(cmd->chanlist[i]);

		if (aref != aref0) {
			FUNC4(dev->class_dev,
				"Differential and single ended inputs can't be mixed!\n");
			return -EINVAL;
		}
		if (FUNC3(s, range) !=
		    FUNC3(s, range0)) {
			FUNC4(dev->class_dev,
				"Bipolar and unipolar ranges can't be mixed!\n");
			return -EINVAL;
		}
		if (!devpriv->usemux && aref == AREF_DIFF &&
		    (chan >= (s->n_chan / 2))) {
			FUNC4(dev->class_dev,
				"AREF_DIFF is only available for the first 8 channels!\n");
			return -EINVAL;
		}
	}

	return 0;
}