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
typedef  int /*<<< orphan*/  u8 ;
struct iscsi_conn {TYPE_2__* sess; } ;
struct iscsi_cmd {scalar_t__ dataout_timeout_retries; struct iscsi_conn* conn; } ;
struct TYPE_4__ {TYPE_1__* sess_ops; } ;
struct TYPE_3__ {int /*<<< orphan*/  ErrorRecoveryLevel; } ;

/* Variables and functions */
 int DATAOUT_CANNOT_RECOVER ; 
 int /*<<< orphan*/  ISCSI_REASON_DATA_DIGEST_ERROR ; 
 int FUNC0 (struct iscsi_cmd*,unsigned char*) ; 
 int FUNC1 (struct iscsi_cmd*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC2 (struct iscsi_cmd*,int /*<<< orphan*/ ,unsigned char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

int FUNC4(
	struct iscsi_cmd *cmd,
	unsigned char *buf,
	u8 data_crc_failed)
{
	struct iscsi_conn *conn = cmd->conn;

	cmd->dataout_timeout_retries = 0;

	if (!data_crc_failed)
		return FUNC1(cmd, buf);
	else {
		if (!conn->sess->sess_ops->ErrorRecoveryLevel) {
			FUNC3("Unable to recover from DataOUT CRC"
				" failure while ERL=0, closing session.\n");
			FUNC2(cmd, ISCSI_REASON_DATA_DIGEST_ERROR,
					  buf);
			return DATAOUT_CANNOT_RECOVER;
		}

		FUNC2(cmd, ISCSI_REASON_DATA_DIGEST_ERROR, buf);
		return FUNC0(cmd, buf);
	}
}