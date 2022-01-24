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
 int /*<<< orphan*/  ESCAPE_CODE ; 
 int /*<<< orphan*/  KERNEL_ENTER_SWITCH_CODE ; 
 int /*<<< orphan*/  KERNEL_EXIT_SWITCH_CODE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(unsigned int in_kernel)
{
	FUNC0(ESCAPE_CODE);
	if (in_kernel)
		FUNC0(KERNEL_ENTER_SWITCH_CODE);
	else
		FUNC0(KERNEL_EXIT_SWITCH_CODE);
}