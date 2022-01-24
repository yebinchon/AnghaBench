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
typedef  int /*<<< orphan*/  u16 ;
struct qman_portal {TYPE_1__* config; } ;
struct TYPE_2__ {int cpu; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/ * affine_channels ; 
 int /*<<< orphan*/  affine_mask ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 
 struct qman_portal* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 

u16 FUNC4(int cpu)
{
	if (cpu < 0) {
		struct qman_portal *portal = FUNC2();

		cpu = portal->config->cpu;
		FUNC3();
	}
	FUNC0(!FUNC1(cpu, &affine_mask));
	return affine_channels[cpu];
}