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
struct comedi_subdevice {struct comedi_device const* device; } ;
struct comedi_device {int dummy; } ;

/* Variables and functions */
 unsigned int COMEDI_NUM_BOARD_MINORS ; 
 struct comedi_subdevice** comedi_subdevice_minor_table ; 
 int /*<<< orphan*/  comedi_subdevice_minor_table_lock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct comedi_subdevice *
FUNC2(const struct comedi_device *dev, unsigned int minor)
{
	struct comedi_subdevice *s;
	unsigned int i = minor - COMEDI_NUM_BOARD_MINORS;

	FUNC0(&comedi_subdevice_minor_table_lock);
	s = comedi_subdevice_minor_table[i];
	if (s && s->device != dev)
		s = NULL;
	FUNC1(&comedi_subdevice_minor_table_lock);
	return s;
}