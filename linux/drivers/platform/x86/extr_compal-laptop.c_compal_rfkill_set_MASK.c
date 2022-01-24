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
typedef  unsigned long u8 ;

/* Variables and functions */
 int /*<<< orphan*/  WIRELESS_ADDR ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static int FUNC2(void *data, bool blocked)
{
	unsigned long radio = (unsigned long) data;
	u8 result = FUNC0(WIRELESS_ADDR);
	u8 value;

	if (!blocked)
		value = (u8) (result | radio);
	else
		value = (u8) (result & ~radio);
	FUNC1(WIRELESS_ADDR, value);

	return 0;
}