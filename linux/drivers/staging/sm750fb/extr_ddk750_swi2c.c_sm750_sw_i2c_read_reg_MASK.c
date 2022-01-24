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

/* Variables and functions */
 unsigned char FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (unsigned char) ; 

unsigned char FUNC4(unsigned char addr, unsigned char reg)
{
	unsigned char data;

	/* Send the Start signal */
	FUNC1();

	/* Send the device address */
	FUNC3(addr);

	/* Send the register index */
	FUNC3(reg);

	/* Get the bus again and get the data from the device read address */
	FUNC1();
	FUNC3(addr + 1);
	data = FUNC0(1);

	/* Stop swI2C and release the bus */
	FUNC2();

	return data;
}