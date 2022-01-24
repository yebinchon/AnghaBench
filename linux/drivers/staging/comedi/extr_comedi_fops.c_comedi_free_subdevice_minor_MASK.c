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
struct comedi_subdevice {scalar_t__ minor; int /*<<< orphan*/ * class_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMEDI_MAJOR ; 
 scalar_t__ COMEDI_NUM_BOARD_MINORS ; 
 scalar_t__ COMEDI_NUM_MINORS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  comedi_class ; 
 struct comedi_subdevice** comedi_subdevice_minor_table ; 
 int /*<<< orphan*/  comedi_subdevice_minor_table_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct comedi_subdevice *s)
{
	unsigned int i;

	if (!s)
		return;
	if (s->minor < COMEDI_NUM_BOARD_MINORS ||
	    s->minor >= COMEDI_NUM_MINORS)
		return;

	i = s->minor - COMEDI_NUM_BOARD_MINORS;
	FUNC2(&comedi_subdevice_minor_table_lock);
	if (s == comedi_subdevice_minor_table[i])
		comedi_subdevice_minor_table[i] = NULL;
	FUNC3(&comedi_subdevice_minor_table_lock);
	if (s->class_dev) {
		FUNC1(comedi_class, FUNC0(COMEDI_MAJOR, s->minor));
		s->class_dev = NULL;
	}
}