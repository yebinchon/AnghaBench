#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;
struct asus_wmi {TYPE_1__ kbd_led; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct asus_wmi*) ; 
 scalar_t__ FUNC2 (struct asus_wmi*) ; 
 struct asus_wmi* FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (struct asus_wmi*) ; 

__attribute__((used)) static int FUNC5(struct device *device)
{
	struct asus_wmi *asus = FUNC3(device);

	if (!FUNC0(asus->kbd_led.dev))
		FUNC4(asus);

	if (FUNC2(asus))
		FUNC1(asus);
	return 0;
}