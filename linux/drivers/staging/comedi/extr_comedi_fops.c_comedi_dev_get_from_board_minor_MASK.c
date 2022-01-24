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
struct comedi_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/ * comedi_board_minor_table ; 
 int /*<<< orphan*/  comedi_board_minor_table_lock ; 
 struct comedi_device* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct comedi_device *FUNC3(unsigned int minor)
{
	struct comedi_device *dev;

	FUNC1(&comedi_board_minor_table_lock);
	dev = FUNC0(comedi_board_minor_table[minor]);
	FUNC2(&comedi_board_minor_table_lock);
	return dev;
}