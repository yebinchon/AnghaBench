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
struct device {int dummy; } ;
struct comedi_device {struct device* hw_dev; } ;

/* Variables and functions */
 int COMEDI_NUM_BOARD_MINORS ; 
 struct comedi_device** comedi_board_minor_table ; 
 int /*<<< orphan*/  comedi_board_minor_table_lock ; 
 int /*<<< orphan*/  FUNC0 (struct comedi_device*) ; 
 int comedi_num_legacy_minors ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct device *hardware_device)
{
	int minor;
	struct comedi_device *dev;

	for (minor = comedi_num_legacy_minors; minor < COMEDI_NUM_BOARD_MINORS;
	     minor++) {
		FUNC1(&comedi_board_minor_table_lock);
		dev = comedi_board_minor_table[minor];
		if (dev && dev->hw_dev == hardware_device) {
			comedi_board_minor_table[minor] = NULL;
			FUNC2(&comedi_board_minor_table_lock);
			FUNC0(dev);
			break;
		}
		FUNC2(&comedi_board_minor_table_lock);
	}
}