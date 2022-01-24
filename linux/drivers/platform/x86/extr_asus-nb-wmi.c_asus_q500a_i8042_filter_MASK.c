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
struct serio {int dummy; } ;

/* Variables and functions */
 unsigned char I8042_STR_AUXDATA ; 
 scalar_t__ FUNC0 (int) ; 

__attribute__((used)) static bool FUNC1(unsigned char data, unsigned char str,
			      struct serio *port)
{
	static bool extended;
	bool ret = false;

	if (str & I8042_STR_AUXDATA)
		return false;

	if (FUNC0(data == 0xe1)) {
		extended = true;
		ret = true;
	} else if (FUNC0(extended)) {
		extended = false;
		ret = true;
	}

	return ret;
}