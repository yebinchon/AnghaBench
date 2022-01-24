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
struct beiscsi_hba {int dummy; } ;
struct be_dma_mem {struct be_cmd_hba_name* va; } ;
struct TYPE_2__ {int version; } ;
struct be_cmd_hba_name {char* initiator_name; TYPE_1__ hdr; } ;
typedef  int /*<<< orphan*/  resp ;

/* Variables and functions */
 int BEISCSI_LOG_CONFIG ; 
 int BEISCSI_LOG_MBOX ; 
 int /*<<< orphan*/  CMD_SUBSYSTEM_ISCSI_INI ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  OPCODE_ISCSI_INI_CFG_GET_HBA_NAME ; 
 int FUNC0 (struct beiscsi_hba*,struct be_dma_mem*,int /*<<< orphan*/ *,struct be_cmd_hba_name*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct beiscsi_hba*,int /*<<< orphan*/ ,int,char*) ; 
 int FUNC2 (struct beiscsi_hba*,struct be_dma_mem*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (char*,char*,char*) ; 

int FUNC4(struct beiscsi_hba *phba, char *name, bool cfg)
{
	struct be_dma_mem nonemb_cmd;
	struct be_cmd_hba_name resp;
	struct be_cmd_hba_name *req;
	int rc;

	rc = FUNC2(phba, &nonemb_cmd, CMD_SUBSYSTEM_ISCSI_INI,
			OPCODE_ISCSI_INI_CFG_GET_HBA_NAME, sizeof(resp));
	if (rc)
		return rc;

	req = nonemb_cmd.va;
	if (cfg)
		req->hdr.version = 1;
	rc = FUNC0(phba, &nonemb_cmd, NULL,
				   &resp, sizeof(resp));
	if (rc) {
		FUNC1(phba, KERN_ERR,
			    BEISCSI_LOG_CONFIG | BEISCSI_LOG_MBOX,
			    "BS_%d : Initiator Name MBX Failed\n");
		return rc;
	}
	rc = FUNC3(name, "%s\n", resp.initiator_name);
	return rc;
}