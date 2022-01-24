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
struct iscsi_login {struct iscsi_login* rsp_buf; struct iscsi_login* req_buf; } ;
struct iscsi_conn {struct iscsi_login* conn_login; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct iscsi_login*) ; 

void FUNC1(struct iscsi_conn *conn)
{
	struct iscsi_login *login = conn->conn_login;

	if (!login)
		return;

	FUNC0(login->req_buf);
	FUNC0(login->rsp_buf);
	FUNC0(login);

	conn->conn_login = NULL;
}