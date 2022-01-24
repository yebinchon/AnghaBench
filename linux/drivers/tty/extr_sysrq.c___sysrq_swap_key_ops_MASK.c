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
struct sysrq_key_op {int dummy; } ;

/* Variables and functions */
 struct sysrq_key_op* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,struct sysrq_key_op*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  sysrq_key_table_lock ; 

__attribute__((used)) static int FUNC5(int key, struct sysrq_key_op *insert_op_p,
                                struct sysrq_key_op *remove_op_p)
{
	int retval;

	FUNC2(&sysrq_key_table_lock);
	if (FUNC0(key) == remove_op_p) {
		FUNC1(key, insert_op_p);
		retval = 0;
	} else {
		retval = -1;
	}
	FUNC3(&sysrq_key_table_lock);

	/*
	 * A concurrent __handle_sysrq either got the old op or the new op.
	 * Wait for it to go away before returning, so the code for an old
	 * op is not freed (eg. on module unload) while it is in use.
	 */
	FUNC4();

	return retval;
}