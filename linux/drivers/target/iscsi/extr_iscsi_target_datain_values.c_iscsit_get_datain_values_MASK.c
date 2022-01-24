#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct iscsi_datain_req {int dummy; } ;
struct iscsi_datain {int dummy; } ;
struct iscsi_conn {TYPE_2__* sess; } ;
struct iscsi_cmd {struct iscsi_conn* conn; } ;
struct TYPE_4__ {TYPE_1__* sess_ops; } ;
struct TYPE_3__ {scalar_t__ DataPDUInOrder; scalar_t__ DataSequenceInOrder; } ;

/* Variables and functions */
 struct iscsi_datain_req* FUNC0 (struct iscsi_cmd*,struct iscsi_datain*) ; 
 struct iscsi_datain_req* FUNC1 (struct iscsi_cmd*,struct iscsi_datain*) ; 
 struct iscsi_datain_req* FUNC2 (struct iscsi_cmd*,struct iscsi_datain*) ; 
 struct iscsi_datain_req* FUNC3 (struct iscsi_cmd*,struct iscsi_datain*) ; 

struct iscsi_datain_req *FUNC4(
	struct iscsi_cmd *cmd,
	struct iscsi_datain *datain)
{
	struct iscsi_conn *conn = cmd->conn;

	if (conn->sess->sess_ops->DataSequenceInOrder &&
	    conn->sess->sess_ops->DataPDUInOrder)
		return FUNC3(cmd, datain);
	else if (!conn->sess->sess_ops->DataSequenceInOrder &&
		  conn->sess->sess_ops->DataPDUInOrder)
		return FUNC1(cmd, datain);
	else if (conn->sess->sess_ops->DataSequenceInOrder &&
		 !conn->sess->sess_ops->DataPDUInOrder)
		return FUNC2(cmd, datain);
	else if (!conn->sess->sess_ops->DataSequenceInOrder &&
		   !conn->sess->sess_ops->DataPDUInOrder)
		return FUNC0(cmd, datain);

	return NULL;
}