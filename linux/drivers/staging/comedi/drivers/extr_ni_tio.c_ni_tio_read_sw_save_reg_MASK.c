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
struct ni_gpct {unsigned int counter_index; } ;
struct comedi_subdevice {struct ni_gpct* private; } ;
struct comedi_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GI_SAVE_TRACE ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 unsigned int FUNC2 (struct ni_gpct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ni_gpct*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned int FUNC4(struct comedi_device *dev,
					    struct comedi_subdevice *s)
{
	struct ni_gpct *counter = s->private;
	unsigned int cidx = counter->counter_index;
	unsigned int val;

	FUNC3(counter, FUNC0(cidx), GI_SAVE_TRACE, 0);
	FUNC3(counter, FUNC0(cidx),
			GI_SAVE_TRACE, GI_SAVE_TRACE);

	/*
	 * The count doesn't get latched until the next clock edge, so it is
	 * possible the count may change (once) while we are reading. Since
	 * the read of the SW_Save_Reg isn't atomic (apparently even when it's
	 * a 32 bit register according to 660x docs), we need to read twice
	 * and make sure the reading hasn't changed. If it has, a third read
	 * will be correct since the count value will definitely have latched
	 * by then.
	 */
	val = FUNC2(counter, FUNC1(cidx));
	if (val != FUNC2(counter, FUNC1(cidx)))
		val = FUNC2(counter, FUNC1(cidx));

	return val;
}