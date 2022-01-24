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
 scalar_t__ FUNC0 (char*,char**) ; 
 int /*<<< orphan*/  i810fb_driver ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(void)
{
	char *option = NULL;

	if (FUNC0("i810fb", &option))
		return -ENODEV;
	FUNC1(option);

	return FUNC2(&i810fb_driver);
}