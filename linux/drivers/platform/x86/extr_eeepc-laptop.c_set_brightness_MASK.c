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
struct eeepc_laptop {int dummy; } ;
struct backlight_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CM_ASL_PANELBRIGHT ; 
 struct eeepc_laptop* FUNC0 (struct backlight_device*) ; 
 int FUNC1 (struct eeepc_laptop*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(struct backlight_device *bd, int value)
{
	struct eeepc_laptop *eeepc = FUNC0(bd);

	return FUNC1(eeepc, CM_ASL_PANELBRIGHT, value);
}