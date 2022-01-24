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
struct iscsi_login {int dummy; } ;
struct iscsi_conn {struct cxgbit_sock* context; } ;
struct TYPE_2__ {int /*<<< orphan*/  flags; } ;
struct cxgbit_sock {TYPE_1__ com; } ;

/* Variables and functions */
 int /*<<< orphan*/  CSK_LOGIN_PDU_DONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct cxgbit_sock*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC3(struct iscsi_conn *conn, struct iscsi_login *login)
{
	struct cxgbit_sock *csk = conn->context;
	int ret = -1;

	while (!FUNC2(CSK_LOGIN_PDU_DONE, &csk->com.flags)) {
		ret = FUNC1(csk);
		if (ret) {
			FUNC0(CSK_LOGIN_PDU_DONE, &csk->com.flags);
			break;
		}
	}

	return ret;
}