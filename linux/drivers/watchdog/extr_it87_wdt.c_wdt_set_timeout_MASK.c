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
struct watchdog_device {unsigned int timeout; } ;

/* Variables and functions */
 unsigned int max_units ; 
 scalar_t__ FUNC0 (struct watchdog_device*) ; 
 unsigned int FUNC1 (unsigned int) ; 
 int FUNC2 (unsigned int) ; 

__attribute__((used)) static int FUNC3(struct watchdog_device *wdd, unsigned int t)
{
	int ret = 0;

	if (t > max_units)
		t = FUNC1(t);

	wdd->timeout = t;

	if (FUNC0(wdd))
		ret = FUNC2(t);

	return ret;
}