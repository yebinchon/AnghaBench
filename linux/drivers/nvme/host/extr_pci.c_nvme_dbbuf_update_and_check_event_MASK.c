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
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  volatile,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static bool FUNC3(u16 value, u32 *dbbuf_db,
					      volatile u32 *dbbuf_ei)
{
	if (dbbuf_db) {
		u16 old_value;

		/*
		 * Ensure that the queue is written before updating
		 * the doorbell in memory
		 */
		FUNC2();

		old_value = *dbbuf_db;
		*dbbuf_db = value;

		/*
		 * Ensure that the doorbell is updated before reading the event
		 * index from memory.  The controller needs to provide similar
		 * ordering to ensure the envent index is updated before reading
		 * the doorbell.
		 */
		FUNC0();

		if (!FUNC1(*dbbuf_ei, value, old_value))
			return false;
	}

	return true;
}