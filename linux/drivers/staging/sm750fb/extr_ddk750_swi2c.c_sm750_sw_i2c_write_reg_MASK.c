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
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (unsigned char) ; 

long FUNC3(unsigned char addr,
			    unsigned char reg,
			    unsigned char data)
{
	long ret = 0;

	/* Send the Start signal */
	FUNC0();

	/* Send the device address and read the data. All should return success
	 * in order for the writing processed to be successful
	 */
	if ((FUNC2(addr) != 0) ||
	    (FUNC2(reg) != 0) ||
	    (FUNC2(data) != 0)) {
		ret = -1;
	}

	/* Stop i2c and release the bus */
	FUNC1();

	return ret;
}