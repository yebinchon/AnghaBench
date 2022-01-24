#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned char u8 ;
struct se_cmd {char* t_task_cdb; int data_length; } ;
typedef  scalar_t__ sense_reason_t ;
struct TYPE_3__ {unsigned char page; unsigned char subpage; int (* emulate ) (struct se_cmd*,int /*<<< orphan*/ ,unsigned char*) ;} ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  GOOD ; 
 char MODE_SELECT_10 ; 
 int SE_MODE_PAGE_BUF ; 
 scalar_t__ TCM_INVALID_CDB_FIELD ; 
 scalar_t__ TCM_INVALID_PARAMETER_LIST ; 
 scalar_t__ TCM_LOGICAL_UNIT_COMMUNICATION_FAILURE ; 
 scalar_t__ TCM_PARAMETER_LIST_LENGTH_ERROR ; 
 scalar_t__ TCM_UNKNOWN_MODE_PAGE ; 
 scalar_t__ FUNC1 (unsigned char*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,int /*<<< orphan*/ ,int) ; 
 TYPE_1__* modesense_handlers ; 
 int FUNC3 (struct se_cmd*,int /*<<< orphan*/ ,unsigned char*) ; 
 int /*<<< orphan*/  FUNC4 (struct se_cmd*,int /*<<< orphan*/ ) ; 
 unsigned char* FUNC5 (struct se_cmd*) ; 
 int /*<<< orphan*/  FUNC6 (struct se_cmd*) ; 

__attribute__((used)) static sense_reason_t FUNC7(struct se_cmd *cmd)
{
	char *cdb = cmd->t_task_cdb;
	bool ten = cdb[0] == MODE_SELECT_10;
	int off = ten ? 8 : 4;
	bool pf = !!(cdb[1] & 0x10);
	u8 page, subpage;
	unsigned char *buf;
	unsigned char tbuf[SE_MODE_PAGE_BUF];
	int length;
	sense_reason_t ret = 0;
	int i;

	if (!cmd->data_length) {
		FUNC4(cmd, GOOD);
		return 0;
	}

	if (cmd->data_length < off + 2)
		return TCM_PARAMETER_LIST_LENGTH_ERROR;

	buf = FUNC5(cmd);
	if (!buf)
		return TCM_LOGICAL_UNIT_COMMUNICATION_FAILURE;

	if (!pf) {
		ret = TCM_INVALID_CDB_FIELD;
		goto out;
	}

	page = buf[off] & 0x3f;
	subpage = buf[off] & 0x40 ? buf[off + 1] : 0;

	for (i = 0; i < FUNC0(modesense_handlers); ++i)
		if (modesense_handlers[i].page == page &&
		    modesense_handlers[i].subpage == subpage) {
			FUNC2(tbuf, 0, SE_MODE_PAGE_BUF);
			length = modesense_handlers[i].emulate(cmd, 0, tbuf);
			goto check_contents;
		}

	ret = TCM_UNKNOWN_MODE_PAGE;
	goto out;

check_contents:
	if (cmd->data_length < off + length) {
		ret = TCM_PARAMETER_LIST_LENGTH_ERROR;
		goto out;
	}

	if (FUNC1(buf + off, tbuf, length))
		ret = TCM_INVALID_PARAMETER_LIST;

out:
	FUNC6(cmd);

	if (!ret)
		FUNC4(cmd, GOOD);
	return ret;
}