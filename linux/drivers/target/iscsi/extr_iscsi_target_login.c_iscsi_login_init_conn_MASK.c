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
struct iscsi_login {int first_request; struct iscsi_login* req_buf; void* rsp_buf; struct iscsi_conn* conn; } ;
struct iscsi_conn {struct iscsi_login* conn_login; struct iscsi_login* login; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int MAX_KEY_VALUE_PAIRS ; 
 int /*<<< orphan*/  FUNC0 (struct iscsi_login*) ; 
 void* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static struct iscsi_login *FUNC3(struct iscsi_conn *conn)
{
	struct iscsi_login *login;

	login = FUNC1(sizeof(struct iscsi_login), GFP_KERNEL);
	if (!login) {
		FUNC2("Unable to allocate memory for struct iscsi_login.\n");
		return NULL;
	}
	conn->login = login;
	login->conn = conn;
	login->first_request = 1;

	login->req_buf = FUNC1(MAX_KEY_VALUE_PAIRS, GFP_KERNEL);
	if (!login->req_buf) {
		FUNC2("Unable to allocate memory for response buffer.\n");
		goto out_login;
	}

	login->rsp_buf = FUNC1(MAX_KEY_VALUE_PAIRS, GFP_KERNEL);
	if (!login->rsp_buf) {
		FUNC2("Unable to allocate memory for request buffer.\n");
		goto out_req_buf;
	}

	conn->conn_login = login;

	return login;

out_req_buf:
	FUNC0(login->req_buf);
out_login:
	FUNC0(login);
	return NULL;
}