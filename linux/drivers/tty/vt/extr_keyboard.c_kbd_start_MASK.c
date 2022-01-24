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
struct input_handle {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct input_handle*,unsigned int*) ; 
 int /*<<< orphan*/  keyboard_tasklet ; 
 unsigned int ledstate ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct input_handle *handle)
{
	FUNC1(&keyboard_tasklet);

	if (ledstate != -1U)
		FUNC0(handle, &ledstate);

	FUNC2(&keyboard_tasklet);
}