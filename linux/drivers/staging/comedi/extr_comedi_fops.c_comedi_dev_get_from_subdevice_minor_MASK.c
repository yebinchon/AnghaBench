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
struct comedi_subdevice {int /*<<< orphan*/ * device; } ;
struct comedi_device {int dummy; } ;

/* Variables and functions */
 unsigned int COMEDI_NUM_BOARD_MINORS ; 
 struct comedi_device* FUNC0 (int /*<<< orphan*/ *) ; 
 struct comedi_subdevice** comedi_subdevice_minor_table ; 
 int /*<<< orphan*/  comedi_subdevice_minor_table_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct comedi_device *
FUNC3(unsigned int minor)
{
	struct comedi_device *dev;
	struct comedi_subdevice *s;
	unsigned int i = minor - COMEDI_NUM_BOARD_MINORS;

	FUNC1(&comedi_subdevice_minor_table_lock);
	s = comedi_subdevice_minor_table[i];
	dev = FUNC0(s ? s->device : NULL);
	FUNC2(&comedi_subdevice_minor_table_lock);
	return dev;
}