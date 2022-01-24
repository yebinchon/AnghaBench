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
struct TYPE_2__ {int /*<<< orphan*/  io_lock; int /*<<< orphan*/  io_addr; int /*<<< orphan*/  supports_temp; } ;

/* Variables and functions */
 scalar_t__ DEBUG ; 
 int ENODEV ; 
 scalar_t__ debug ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__ pcipcwd_private ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(int *temperature)
{
	*temperature = 0;
	if (!pcipcwd_private.supports_temp)
		return -ENODEV;

	FUNC2(&pcipcwd_private.io_lock);
	*temperature = FUNC0(pcipcwd_private.io_addr);
	FUNC3(&pcipcwd_private.io_lock);

	/*
	 * Convert celsius to fahrenheit, since this was
	 * the decided 'standard' for this return value.
	 */
	*temperature = (*temperature * 9 / 5) + 32;

	if (debug >= DEBUG) {
		FUNC1("temperature is: %d F\n", *temperature);
	}

	return 0;
}