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
 unsigned long VCC_MAX_PORTS ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/ ** vcc_table ; 
 int /*<<< orphan*/  vcc_table_lock ; 

__attribute__((used)) static void FUNC3(unsigned long index)
{
	unsigned long flags;

	if (FUNC0(index >= VCC_MAX_PORTS))
		return;

	FUNC1(&vcc_table_lock, flags);
	vcc_table[index] = NULL;
	FUNC2(&vcc_table_lock, flags);
}