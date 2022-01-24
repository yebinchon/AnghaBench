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
struct asus_laptop {int light_level; int /*<<< orphan*/  handle; } ;

/* Variables and functions */
 int /*<<< orphan*/  METHOD_ALS_LEVEL ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct asus_laptop *asus, int value)
{
	if (FUNC1(asus->handle, METHOD_ALS_LEVEL, value))
		FUNC0("Error setting light sensor level\n");
	asus->light_level = value;
}