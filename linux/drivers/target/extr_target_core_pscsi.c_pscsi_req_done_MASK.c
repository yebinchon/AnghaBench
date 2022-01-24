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
typedef  int u8 ;
struct se_cmd {scalar_t__ data_length; struct pscsi_plugin_task* priv; } ;
struct request {struct se_cmd* end_io_data; } ;
struct pscsi_plugin_task {int /*<<< orphan*/ * pscsi_cdb; } ;
typedef  int /*<<< orphan*/  blk_status_t ;
struct TYPE_2__ {int result; scalar_t__ resid_len; int /*<<< orphan*/  sense; } ;

/* Variables and functions */
#define  DID_OK 128 
 int /*<<< orphan*/  SAM_STAT_CHECK_CONDITION ; 
 int /*<<< orphan*/  FUNC0 (struct request*) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct pscsi_plugin_task*) ; 
 int /*<<< orphan*/  FUNC3 (char*,struct se_cmd*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct se_cmd*,int,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC5 (struct request*) ; 
 int FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct se_cmd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct se_cmd*,int,scalar_t__) ; 

__attribute__((used)) static void FUNC9(struct request *req, blk_status_t status)
{
	struct se_cmd *cmd = req->end_io_data;
	struct pscsi_plugin_task *pt = cmd->priv;
	int result = FUNC5(req)->result;
	u8 scsi_status = FUNC6(result) << 1;

	if (scsi_status) {
		FUNC3("PSCSI Status Byte exception at cmd: %p CDB:"
			" 0x%02x Result: 0x%08x\n", cmd, pt->pscsi_cdb[0],
			result);
	}

	FUNC4(cmd, scsi_status, FUNC5(req)->sense);

	switch (FUNC1(result)) {
	case DID_OK:
		FUNC8(cmd, scsi_status,
			cmd->data_length - FUNC5(req)->resid_len);
		break;
	default:
		FUNC3("PSCSI Host Byte exception at cmd: %p CDB:"
			" 0x%02x Result: 0x%08x\n", cmd, pt->pscsi_cdb[0],
			result);
		FUNC7(cmd, SAM_STAT_CHECK_CONDITION);
		break;
	}

	FUNC0(req);
	FUNC2(pt);
}