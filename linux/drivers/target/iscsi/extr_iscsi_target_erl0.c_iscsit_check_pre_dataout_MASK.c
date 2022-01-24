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
struct iscsi_conn {TYPE_2__* sess; } ;
struct iscsi_cmd {scalar_t__ unsolicited_data; struct iscsi_conn* conn; } ;
struct TYPE_4__ {TYPE_1__* sess_ops; } ;
struct TYPE_3__ {scalar_t__ DataPDUInOrder; } ;

/* Variables and functions */
 int DATAOUT_CANNOT_RECOVER ; 
 int DATAOUT_WITHIN_COMMAND_RECOVERY ; 
 int FUNC0 (struct iscsi_cmd*,unsigned char*) ; 
 int FUNC1 (struct iscsi_cmd*,unsigned char*) ; 
 int FUNC2 (struct iscsi_cmd*,unsigned char*) ; 
 int FUNC3 (struct iscsi_cmd*,unsigned char*) ; 
 int FUNC4 (struct iscsi_cmd*,unsigned char*) ; 
 int FUNC5 (struct iscsi_cmd*,unsigned char*) ; 

int FUNC6(
	struct iscsi_cmd *cmd,
	unsigned char *buf)
{
	int ret;
	struct iscsi_conn *conn = cmd->conn;

	ret = FUNC5(cmd, buf);
	if ((ret == DATAOUT_WITHIN_COMMAND_RECOVERY) ||
	    (ret == DATAOUT_CANNOT_RECOVER))
		return ret;

	ret = FUNC0(cmd, buf);
	if ((ret == DATAOUT_WITHIN_COMMAND_RECOVERY) ||
	    (ret == DATAOUT_CANNOT_RECOVER))
		return ret;

	if (cmd->unsolicited_data) {
		ret = FUNC2(cmd, buf);
		if ((ret == DATAOUT_WITHIN_COMMAND_RECOVERY) ||
		    (ret == DATAOUT_CANNOT_RECOVER))
			return ret;
	} else {
		ret = FUNC1(cmd, buf);
		if ((ret == DATAOUT_WITHIN_COMMAND_RECOVERY) ||
		    (ret == DATAOUT_CANNOT_RECOVER))
			return ret;
	}

	return (conn->sess->sess_ops->DataPDUInOrder) ?
		FUNC4(cmd, buf) :
		FUNC3(cmd, buf);
}