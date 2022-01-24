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
 int HZ ; 
 unsigned char I8042_STR_AUXDATA ; 
 int /*<<< orphan*/  dell_rfkill_work ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int) ; 

__attribute__((used)) static bool FUNC3(unsigned char data, unsigned char str,
			      struct serio *port)
{
	static bool extended;

	if (str & I8042_STR_AUXDATA)
		return false;

	if (FUNC2(data == 0xe0)) {
		extended = true;
		return false;
	} else if (FUNC2(extended)) {
		switch (data) {
		case 0x8:
			FUNC1(&dell_rfkill_work,
					      FUNC0(HZ / 4));
			break;
		}
		extended = false;
	}

	return false;
}