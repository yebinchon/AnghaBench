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
struct lock_class_key {int dummy; } ;
struct ld_semaphore {int /*<<< orphan*/  write_wait; int /*<<< orphan*/  read_wait; int /*<<< orphan*/  wait_lock; scalar_t__ wait_readers; int /*<<< orphan*/  count; int /*<<< orphan*/  dep_map; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  LDSEM_UNLOCKED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char const*,struct lock_class_key*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct ld_semaphore *sem, const char *name,
		  struct lock_class_key *key)
{
#ifdef CONFIG_DEBUG_LOCK_ALLOC
	/*
	 * Make sure we are not reinitializing a held semaphore:
	 */
	debug_check_no_locks_freed((void *)sem, sizeof(*sem));
	lockdep_init_map(&sem->dep_map, name, key, 0);
#endif
	FUNC1(&sem->count, LDSEM_UNLOCKED);
	sem->wait_readers = 0;
	FUNC4(&sem->wait_lock);
	FUNC0(&sem->read_wait);
	FUNC0(&sem->write_wait);
}