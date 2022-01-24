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

/* Variables and functions */
 int ENODEV ; 
 scalar_t__ FUNC0 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  gxt4500_driver ; 
 int /*<<< orphan*/  mode_option ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(void)
{
#ifndef MODULE
	if (FUNC0("gxt4500", &mode_option))
		return -ENODEV;
#endif

	return FUNC1(&gxt4500_driver);
}