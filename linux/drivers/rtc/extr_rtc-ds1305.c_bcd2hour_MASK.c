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
typedef  int u8 ;

/* Variables and functions */
 int DS1305_HR_12 ; 
 int DS1305_HR_PM ; 
 int FUNC0 (int) ; 

__attribute__((used)) static unsigned FUNC1(u8 bcd)
{
	if (bcd & DS1305_HR_12) {
		unsigned	hour = 0;

		bcd &= ~DS1305_HR_12;
		if (bcd & DS1305_HR_PM) {
			hour = 12;
			bcd &= ~DS1305_HR_PM;
		}
		hour += FUNC0(bcd);
		return hour - 1;
	}
	return FUNC0(bcd);
}