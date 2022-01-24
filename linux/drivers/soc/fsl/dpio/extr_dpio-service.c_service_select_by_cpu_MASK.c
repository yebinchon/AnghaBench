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
struct dpaa2_io {int dummy; } ;

/* Variables and functions */
 int DPAA2_IO_ANY_CPU ; 
 struct dpaa2_io** dpio_by_cpu ; 
 int FUNC0 () ; 
 int FUNC1 () ; 
 scalar_t__ FUNC2 (int) ; 

__attribute__((used)) static inline struct dpaa2_io *FUNC3(struct dpaa2_io *d,
						     int cpu)
{
	if (d)
		return d;

	if (cpu != DPAA2_IO_ANY_CPU && cpu >= FUNC0())
		return NULL;

	/*
	 * If cpu == -1, choose the current cpu, with no guarantees about
	 * potentially being migrated away.
	 */
	if (FUNC2(cpu < 0))
		cpu = FUNC1();

	/* If a specific cpu was requested, pick it up immediately */
	return dpio_by_cpu[cpu];
}