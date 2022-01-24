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
typedef  enum wbus { ____Placeholder_wbus } wbus ;

/* Variables and functions */
 int bus_2byte ; 
 int /*<<< orphan*/  FUNC0 (unsigned char) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

void FUNC4(enum wbus bus_byte, unsigned char *pdata)
{
	/*
	 * supports 1 and 2 bytes programming mode
	 */
	if (FUNC2(bus_byte == bus_2byte))
		FUNC0(pdata[0]);

	FUNC1(pdata[1]);
	FUNC3(1);
}