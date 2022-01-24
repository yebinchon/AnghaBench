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
typedef  int /*<<< orphan*/  u32 ;

/* Variables and functions */
 int /*<<< orphan*/  CRT_Device ; 
 int /*<<< orphan*/  DVI_Device ; 
 int /*<<< orphan*/  LCD_Device ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int*) ; 

void FUNC2(u32 *connect_state)
{
	bool mobile = false;

	*connect_state = CRT_Device;

	if (FUNC0())
		*connect_state |= DVI_Device;

	FUNC1(&mobile);
	if (mobile)
		*connect_state |= LCD_Device;
}