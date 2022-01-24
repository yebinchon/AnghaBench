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
struct comedi_8254 {int dummy; } ;

/* Variables and functions */
 int I8254_CTRL_LATCH ; 
 int /*<<< orphan*/  I8254_CTRL_REG ; 
 int FUNC0 (unsigned int) ; 
 int FUNC1 (struct comedi_8254*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct comedi_8254*,int,int /*<<< orphan*/ ) ; 

unsigned int FUNC3(struct comedi_8254 *i8254, unsigned int counter)
{
	unsigned int val;

	if (counter > 2)
		return 0;

	/* latch counter */
	FUNC2(i8254, FUNC0(counter) | I8254_CTRL_LATCH,
		      I8254_CTRL_REG);

	/* read LSB then MSB */
	val = FUNC1(i8254, counter);
	val |= (FUNC1(i8254, counter) << 8);

	return val;
}