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
typedef  size_t u32 ;
struct TYPE_2__ {struct qedi_conn** conn_cid_tbl; } ;
struct qedi_ctx {size_t max_active_conns; TYPE_1__ cid_que; int /*<<< orphan*/  dbg_ctx; } ;
struct qedi_conn {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 

struct qedi_conn *FUNC1(struct qedi_ctx *qedi, u32 iscsi_cid)
{
	if (!qedi->cid_que.conn_cid_tbl) {
		FUNC0(&qedi->dbg_ctx, "missing conn<->cid table\n");
		return NULL;

	} else if (iscsi_cid >= qedi->max_active_conns) {
		FUNC0(&qedi->dbg_ctx, "wrong cid #%d\n", iscsi_cid);
		return NULL;
	}
	return qedi->cid_que.conn_cid_tbl[iscsi_cid];
}