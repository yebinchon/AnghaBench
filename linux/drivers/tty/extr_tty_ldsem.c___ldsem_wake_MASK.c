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
struct ld_semaphore {int /*<<< orphan*/  read_wait; int /*<<< orphan*/  write_wait; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ld_semaphore*) ; 
 int /*<<< orphan*/  FUNC1 (struct ld_semaphore*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct ld_semaphore *sem)
{
	if (!FUNC2(&sem->write_wait))
		FUNC1(sem);
	else if (!FUNC2(&sem->read_wait))
		FUNC0(sem);
}