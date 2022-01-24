#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
union megasas_sgl {TYPE_2__* sge32; TYPE_1__* sge64; } ;
typedef  int u32 ;
typedef  int u16 ;
struct megasas_pthru_frame {int sge_count; int /*<<< orphan*/  sense_buf_phys_addr_lo; int /*<<< orphan*/  data_xfer_len; int /*<<< orphan*/  cdb_len; int /*<<< orphan*/  lun; int /*<<< orphan*/  target_id; int /*<<< orphan*/  cmd; union megasas_sgl sgl; } ;
struct megasas_io_frame {int sge_count; int /*<<< orphan*/  sense_buf_phys_addr_lo; int /*<<< orphan*/  start_lba_hi; int /*<<< orphan*/  start_lba_lo; int /*<<< orphan*/  target_id; int /*<<< orphan*/  cmd; union megasas_sgl sgl; } ;
struct megasas_instance {int max_fw_cmds; TYPE_4__* host; TYPE_3__* pdev; struct megasas_cmd** cmd_list; int /*<<< orphan*/  fw_outstanding; } ;
struct megasas_cmd {int sync_cmd; scalar_t__ frame_phys_addr; int /*<<< orphan*/  frame_count; scalar_t__ frame; int /*<<< orphan*/  scmd; } ;
struct TYPE_8__ {unsigned long host_no; } ;
struct TYPE_7__ {int /*<<< orphan*/  dev; } ;
struct TYPE_6__ {int /*<<< orphan*/  phys_addr; int /*<<< orphan*/  length; } ;
struct TYPE_5__ {int /*<<< orphan*/  phys_addr; int /*<<< orphan*/  length; } ;

/* Variables and functions */
 scalar_t__ IS_DMA64 ; 
 int MEGASAS_DBG_LVL ; 
 scalar_t__ READ_WRITE_LDIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,unsigned long,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int megasas_dbg_lvl ; 

__attribute__((used)) static inline void
FUNC5(struct megasas_instance *instance)
{
	struct megasas_cmd *cmd;
	int i,n;
	union megasas_sgl *mfi_sgl;
	struct megasas_io_frame *ldio;
	struct megasas_pthru_frame *pthru;
	u32 sgcount;
	u16 max_cmd = instance->max_fw_cmds;

	FUNC1(&instance->pdev->dev, "[%d]: Dumping Frame Phys Address of all pending cmds in FW\n",instance->host->host_no);
	FUNC1(&instance->pdev->dev, "[%d]: Total OS Pending cmds : %d\n",instance->host->host_no,FUNC0(&instance->fw_outstanding));
	if (IS_DMA64)
		FUNC1(&instance->pdev->dev, "[%d]: 64 bit SGLs were sent to FW\n",instance->host->host_no);
	else
		FUNC1(&instance->pdev->dev, "[%d]: 32 bit SGLs were sent to FW\n",instance->host->host_no);

	FUNC1(&instance->pdev->dev, "[%d]: Pending OS cmds in FW : \n",instance->host->host_no);
	for (i = 0; i < max_cmd; i++) {
		cmd = instance->cmd_list[i];
		if (!cmd->scmd)
			continue;
		FUNC1(&instance->pdev->dev, "[%d]: Frame addr :0x%08lx : ",instance->host->host_no,(unsigned long)cmd->frame_phys_addr);
		if (FUNC4(cmd->scmd) == READ_WRITE_LDIO) {
			ldio = (struct megasas_io_frame *)cmd->frame;
			mfi_sgl = &ldio->sgl;
			sgcount = ldio->sge_count;
			FUNC1(&instance->pdev->dev, "[%d]: frame count : 0x%x, Cmd : 0x%x, Tgt id : 0x%x,"
			" lba lo : 0x%x, lba_hi : 0x%x, sense_buf addr : 0x%x,sge count : 0x%x\n",
			instance->host->host_no, cmd->frame_count, ldio->cmd, ldio->target_id,
			FUNC2(ldio->start_lba_lo), FUNC2(ldio->start_lba_hi),
			FUNC2(ldio->sense_buf_phys_addr_lo), sgcount);
		} else {
			pthru = (struct megasas_pthru_frame *) cmd->frame;
			mfi_sgl = &pthru->sgl;
			sgcount = pthru->sge_count;
			FUNC1(&instance->pdev->dev, "[%d]: frame count : 0x%x, Cmd : 0x%x, Tgt id : 0x%x, "
			"lun : 0x%x, cdb_len : 0x%x, data xfer len : 0x%x, sense_buf addr : 0x%x,sge count : 0x%x\n",
			instance->host->host_no, cmd->frame_count, pthru->cmd, pthru->target_id,
			pthru->lun, pthru->cdb_len, FUNC2(pthru->data_xfer_len),
			FUNC2(pthru->sense_buf_phys_addr_lo), sgcount);
		}
		if (megasas_dbg_lvl & MEGASAS_DBG_LVL) {
			for (n = 0; n < sgcount; n++) {
				if (IS_DMA64)
					FUNC1(&instance->pdev->dev, "sgl len : 0x%x, sgl addr : 0x%llx\n",
						FUNC2(mfi_sgl->sge64[n].length),
						FUNC3(mfi_sgl->sge64[n].phys_addr));
				else
					FUNC1(&instance->pdev->dev, "sgl len : 0x%x, sgl addr : 0x%x\n",
						FUNC2(mfi_sgl->sge32[n].length),
						FUNC2(mfi_sgl->sge32[n].phys_addr));
			}
		}
	} /*for max_cmd*/
	FUNC1(&instance->pdev->dev, "[%d]: Pending Internal cmds in FW : \n",instance->host->host_no);
	for (i = 0; i < max_cmd; i++) {

		cmd = instance->cmd_list[i];

		if (cmd->sync_cmd == 1)
			FUNC1(&instance->pdev->dev, "0x%08lx : ", (unsigned long)cmd->frame_phys_addr);
	}
	FUNC1(&instance->pdev->dev, "[%d]: Dumping Done\n\n",instance->host->host_no);
}