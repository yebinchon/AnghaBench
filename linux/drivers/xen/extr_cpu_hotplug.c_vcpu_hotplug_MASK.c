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
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 unsigned int nr_cpu_ids ; 
 int FUNC3 (unsigned int) ; 

__attribute__((used)) static void FUNC4(unsigned int cpu)
{
	if (cpu >= nr_cpu_ids || !FUNC0(cpu))
		return;

	switch (FUNC3(cpu)) {
	case 1:
		FUNC2(cpu);
		break;
	case 0:
		FUNC1(cpu);
		break;
	default:
		break;
	}
}