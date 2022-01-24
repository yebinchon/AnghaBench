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
struct TYPE_2__ {int bus_pick_width; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  SOSSI_INIT1_REG ; 
 TYPE_1__ sossi ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static void FUNC3(unsigned int len)
{
	unsigned long nr_cycles = len / (sossi.bus_pick_width / 8);

	FUNC0((nr_cycles - 1) & ~0x3ffff);

	FUNC1(SOSSI_INIT1_REG, 0x3ffff);
	FUNC2(SOSSI_INIT1_REG, (nr_cycles - 1) & 0x3ffff);
}