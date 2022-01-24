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
 int /*<<< orphan*/  MSI_STANDARD_EC_BLUETOOTH_MASK ; 
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(void *data, bool blocked)
{
	/* Do something with blocked...*/
	/*
	 * blocked == false is on
	 * blocked == true is off
	 */
	int result = FUNC1(blocked ? "0" : "1", 0,
			MSI_STANDARD_EC_BLUETOOTH_MASK);

	return FUNC0(result, 0);
}