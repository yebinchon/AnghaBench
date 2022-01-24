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
struct iscsi_session {int /*<<< orphan*/  cr_i_lock; int /*<<< orphan*/  sid; int /*<<< orphan*/  conn_recovery_count; int /*<<< orphan*/  cr_inactive_list; } ;
struct iscsi_conn_recovery {int /*<<< orphan*/  cr_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(
	struct iscsi_session *sess,
	struct iscsi_conn_recovery *cr)
{
	FUNC2(&sess->cr_i_lock);
	FUNC0(&cr->cr_list, &sess->cr_inactive_list);

	sess->conn_recovery_count++;
	FUNC1("Incremented connection recovery count to %u for"
		" SID: %u\n", sess->conn_recovery_count, sess->sid);
	FUNC3(&sess->cr_i_lock);

	return 0;
}