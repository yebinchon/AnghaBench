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
struct asus_laptop {int /*<<< orphan*/  handle; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  METHOD_BRIGHTNESS_SET ; 
 struct asus_laptop* FUNC0 (struct backlight_device*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct backlight_device *bd, int value)
{
	struct asus_laptop *asus = FUNC0(bd);

	if (FUNC2(asus->handle, METHOD_BRIGHTNESS_SET, value)) {
		FUNC1("Error changing brightness\n");
		return -EIO;
	}
	return 0;
}