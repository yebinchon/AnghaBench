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
typedef  unsigned int u8 ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  TP_EC_BACKLIGHT ; 
 unsigned int TP_EC_BACKLIGHT_CMDMSK ; 
 unsigned int TP_EC_BACKLIGHT_LVLMSK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned int) ; 
 scalar_t__ FUNC2 (int) ; 

__attribute__((used)) static int FUNC3(unsigned int value)
{
	u8 lec = 0;

	if (FUNC2(!FUNC0(TP_EC_BACKLIGHT, &lec)))
		return -EIO;

	if (FUNC2(!FUNC1(TP_EC_BACKLIGHT,
				(lec & TP_EC_BACKLIGHT_CMDMSK) |
				(value & TP_EC_BACKLIGHT_LVLMSK))))
		return -EIO;

	return 0;
}