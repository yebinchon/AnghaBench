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
 int EINVAL ; 
 unsigned int I8254_BCD ; 
 unsigned int I8254_CTRL_LSB_MSB ; 
 int /*<<< orphan*/  I8254_CTRL_REG ; 
 unsigned int FUNC0 (unsigned int) ; 
 unsigned int I8254_MODE5 ; 
 int /*<<< orphan*/  FUNC1 (struct comedi_8254*,unsigned int,int /*<<< orphan*/ ) ; 

int FUNC2(struct comedi_8254 *i8254, unsigned int counter,
			 unsigned int mode)
{
	unsigned int byte;

	if (counter > 2)
		return -EINVAL;
	if (mode > (I8254_MODE5 | I8254_BCD))
		return -EINVAL;

	byte = FUNC0(counter) |	/* select counter */
	       I8254_CTRL_LSB_MSB |		/* load LSB then MSB */
	       mode;				/* mode and BCD|binary */
	FUNC1(i8254, byte, I8254_CTRL_REG);

	return 0;
}