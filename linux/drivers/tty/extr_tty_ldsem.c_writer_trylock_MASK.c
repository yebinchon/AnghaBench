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
struct ld_semaphore {int /*<<< orphan*/  count; } ;

/* Variables and functions */
 long LDSEM_ACTIVE_BIAS ; 
 long LDSEM_ACTIVE_MASK ; 
 long FUNC0 (long,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,long*,long) ; 

__attribute__((used)) static inline int FUNC2(struct ld_semaphore *sem)
{
	/*
	 * Only wake this writer if the active part of the count can be
	 * transitioned from 0 -> 1
	 */
	long count = FUNC0(LDSEM_ACTIVE_BIAS, &sem->count);
	do {
		if ((count & LDSEM_ACTIVE_MASK) == LDSEM_ACTIVE_BIAS)
			return 1;
		if (FUNC1(&sem->count, &count, count - LDSEM_ACTIVE_BIAS))
			return 0;
	} while (1);
}