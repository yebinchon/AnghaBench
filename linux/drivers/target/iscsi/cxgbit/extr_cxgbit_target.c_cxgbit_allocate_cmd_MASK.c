#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct iscsi_conn {int dummy; } ;
struct iscsi_cmd {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  cdev; } ;
struct cxgbit_sock {TYPE_1__ com; struct iscsi_conn* conn; } ;
struct TYPE_5__ {int /*<<< orphan*/  tag; } ;
struct cxgbit_cmd {int setup_ddp; TYPE_2__ ttinfo; } ;
struct TYPE_6__ {int /*<<< orphan*/  no_ddp_mask; } ;
struct cxgbi_ppm {TYPE_3__ tformat; } ;

/* Variables and functions */
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 struct cxgbi_ppm* FUNC0 (int /*<<< orphan*/ ) ; 
 struct iscsi_cmd* FUNC1 (struct iscsi_conn*,int /*<<< orphan*/ ) ; 
 struct cxgbit_cmd* FUNC2 (struct iscsi_cmd*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static struct iscsi_cmd *FUNC4(struct cxgbit_sock *csk)
{
	struct iscsi_conn *conn = csk->conn;
	struct cxgbi_ppm *ppm = FUNC0(csk->com.cdev);
	struct cxgbit_cmd *ccmd;
	struct iscsi_cmd *cmd;

	cmd = FUNC1(conn, TASK_INTERRUPTIBLE);
	if (!cmd) {
		FUNC3("Unable to allocate iscsi_cmd + cxgbit_cmd\n");
		return NULL;
	}

	ccmd = FUNC2(cmd);
	ccmd->ttinfo.tag = ppm->tformat.no_ddp_mask;
	ccmd->setup_ddp = true;

	return cmd;
}