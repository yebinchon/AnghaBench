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
struct asus_laptop {int light_switch; int /*<<< orphan*/  handle; scalar_t__ is_pega_lucid; } ;

/* Variables and functions */
 int /*<<< orphan*/  METHOD_ALS_CONTROL ; 
 int /*<<< orphan*/  PEGA_ALS ; 
 int /*<<< orphan*/  PEGA_ALS_POWER ; 
 int FUNC0 (struct asus_laptop*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct asus_laptop *asus, int value)
{
	int ret;

	if (asus->is_pega_lucid) {
		ret = FUNC0(asus, PEGA_ALS, value);
		if (!ret)
			ret = FUNC0(asus, PEGA_ALS_POWER, value);
	} else {
		ret = FUNC2(asus->handle, METHOD_ALS_CONTROL, value);
	}
	if (ret)
		FUNC1("Error setting light sensor switch\n");

	asus->light_switch = value;
}