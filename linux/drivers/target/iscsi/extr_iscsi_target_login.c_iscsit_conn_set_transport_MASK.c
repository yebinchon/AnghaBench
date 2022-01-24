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
struct iscsit_transport {int /*<<< orphan*/  name; int /*<<< orphan*/  owner; } ;
struct iscsi_conn {struct iscsit_transport* conn_transport; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(struct iscsi_conn *conn, struct iscsit_transport *t)
{
	int rc;

	if (!t->owner) {
		conn->conn_transport = t;
		return 0;
	}

	rc = FUNC1(t->owner);
	if (!rc) {
		FUNC0("try_module_get() failed for %s\n", t->name);
		return -EINVAL;
	}

	conn->conn_transport = t;
	return 0;
}