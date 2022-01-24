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
struct ld_semaphore {int /*<<< orphan*/  wait_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ld_semaphore*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC3(struct ld_semaphore *sem)
{
	unsigned long flags;

	FUNC1(&sem->wait_lock, flags);
	FUNC0(sem);
	FUNC2(&sem->wait_lock, flags);
}