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
struct backlight_device {int dummy; } ;

/* Variables and functions */
 int TP_EC_BACKLIGHT_LVLMSK ; 
 int /*<<< orphan*/  brightness_mutex ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int*) ; 

__attribute__((used)) static int FUNC3(struct backlight_device *bd)
{
	int status, res;

	res = FUNC0(&brightness_mutex);
	if (res < 0)
		return 0;

	res = FUNC2(&status);

	FUNC1(&brightness_mutex);

	if (res < 0)
		return 0;

	return status & TP_EC_BACKLIGHT_LVLMSK;
}