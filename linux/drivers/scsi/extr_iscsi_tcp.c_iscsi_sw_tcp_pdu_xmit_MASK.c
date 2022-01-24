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
struct iscsi_task {struct iscsi_conn* conn; } ;
struct iscsi_conn {int dummy; } ;

/* Variables and functions */
 int EAGAIN ; 
 int FUNC0 (struct iscsi_conn*) ; 
 scalar_t__ FUNC1 (struct iscsi_conn*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 unsigned int FUNC3 () ; 

__attribute__((used)) static int FUNC4(struct iscsi_task *task)
{
	struct iscsi_conn *conn = task->conn;
	unsigned int noreclaim_flag;
	int rc = 0;

	noreclaim_flag = FUNC3();

	while (FUNC1(conn)) {
		rc = FUNC0(conn);
		if (rc == 0) {
			rc = -EAGAIN;
			break;
		}
		if (rc < 0)
			break;
		rc = 0;
	}

	FUNC2(noreclaim_flag);
	return rc;
}