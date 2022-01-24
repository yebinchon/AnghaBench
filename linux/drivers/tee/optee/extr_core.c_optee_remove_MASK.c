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
struct TYPE_2__ {int /*<<< orphan*/  mutex; } ;
struct optee {TYPE_1__ call_queue; int /*<<< orphan*/  supp; int /*<<< orphan*/  wait_queue; scalar_t__ memremaped_shm; int /*<<< orphan*/  pool; int /*<<< orphan*/  teedev; int /*<<< orphan*/  supp_teedev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct optee*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct optee*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct optee *optee)
{
	/*
	 * Ask OP-TEE to free all cached shared memory objects to decrease
	 * reference counters and also avoid wild pointers in secure world
	 * into the old shared memory range.
	 */
	FUNC3(optee);

	/*
	 * The two devices has to be unregistered before we can free the
	 * other resources.
	 */
	FUNC6(optee->supp_teedev);
	FUNC6(optee->teedev);

	FUNC7(optee->pool);
	if (optee->memremaped_shm)
		FUNC1(optee->memremaped_shm);
	FUNC5(&optee->wait_queue);
	FUNC4(&optee->supp);
	FUNC2(&optee->call_queue.mutex);

	FUNC0(optee);
}