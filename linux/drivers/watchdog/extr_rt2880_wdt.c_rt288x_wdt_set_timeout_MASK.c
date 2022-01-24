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
 int /*<<< orphan*/  FUNC0 (struct watchdog_device*) ; 

__attribute__((used)) static int FUNC1(struct watchdog_device *w, unsigned int t)
{
	w->timeout = t;
	FUNC0(w);

	return 0;
}