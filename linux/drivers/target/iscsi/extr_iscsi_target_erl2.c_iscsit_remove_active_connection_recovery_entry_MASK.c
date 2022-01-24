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
struct iscsi_session {int /*<<< orphan*/  cr_a_lock; int /*<<< orphan*/  sid; int /*<<< orphan*/  conn_recovery_count; } ;
struct iscsi_conn_recovery {int /*<<< orphan*/  cr_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct iscsi_conn_recovery*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int FUNC5(
	struct iscsi_conn_recovery *cr,
	struct iscsi_session *sess)
{
	FUNC3(&sess->cr_a_lock);
	FUNC1(&cr->cr_list);

	sess->conn_recovery_count--;
	FUNC2("Decremented connection recovery count to %u for"
		" SID: %u\n", sess->conn_recovery_count, sess->sid);
	FUNC4(&sess->cr_a_lock);

	FUNC0(cr);

	return 0;
}