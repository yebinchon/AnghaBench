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
typedef  int u8 ;
struct se_cmd {unsigned char* t_task_cdb; int /*<<< orphan*/  data_length; int /*<<< orphan*/  se_dev; } ;
typedef  int /*<<< orphan*/  sense_reason_t ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  GOOD ; 
 int /*<<< orphan*/  NO_SENSE ; 
 int SE_SENSE_BUF ; 
 int /*<<< orphan*/  TCM_INVALID_CDB_FIELD ; 
 int /*<<< orphan*/  TCM_LOGICAL_UNIT_COMMUNICATION_FAILURE ; 
 int /*<<< orphan*/  UNIT_ATTENTION ; 
 int /*<<< orphan*/  FUNC0 (struct se_cmd*,int*,int*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,unsigned char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int,unsigned char*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct se_cmd*,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 unsigned char* FUNC8 (struct se_cmd*) ; 
 int /*<<< orphan*/  FUNC9 (struct se_cmd*) ; 
 int /*<<< orphan*/  u32 ; 

__attribute__((used)) static sense_reason_t FUNC10(struct se_cmd *cmd)
{
	unsigned char *cdb = cmd->t_task_cdb;
	unsigned char *rbuf;
	u8 ua_asc = 0, ua_ascq = 0;
	unsigned char buf[SE_SENSE_BUF];
	bool desc_format = FUNC7(cmd->se_dev);

	FUNC2(buf, 0, SE_SENSE_BUF);

	if (cdb[1] & 0x01) {
		FUNC4("REQUEST_SENSE description emulation not"
			" supported\n");
		return TCM_INVALID_CDB_FIELD;
	}

	rbuf = FUNC8(cmd);
	if (!rbuf)
		return TCM_LOGICAL_UNIT_COMMUNICATION_FAILURE;

	if (!FUNC0(cmd, &ua_asc, &ua_ascq))
		FUNC5(desc_format, buf, UNIT_ATTENTION,
					ua_asc, ua_ascq);
	else
		FUNC5(desc_format, buf, NO_SENSE, 0x0, 0x0);

	FUNC1(rbuf, buf, FUNC3(u32, sizeof(buf), cmd->data_length));
	FUNC9(cmd);

	FUNC6(cmd, GOOD);
	return 0;
}