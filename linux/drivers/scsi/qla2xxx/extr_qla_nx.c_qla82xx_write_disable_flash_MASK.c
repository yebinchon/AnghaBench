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
struct qla_hw_data {int /*<<< orphan*/  pdev; } ;
typedef  int /*<<< orphan*/  scsi_qla_host_t ;

/* Variables and functions */
 int /*<<< orphan*/  M25P_INSTR_WRDI ; 
 int /*<<< orphan*/  QLA82XX_ROMUSB_ROM_INSTR_OPCODE ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  ql_log_warn ; 
 scalar_t__ FUNC2 (struct qla_hw_data*) ; 
 int /*<<< orphan*/  FUNC3 (struct qla_hw_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(struct qla_hw_data *ha)
{
	scsi_qla_host_t *vha = FUNC0(ha->pdev);

	FUNC3(ha, QLA82XX_ROMUSB_ROM_INSTR_OPCODE, M25P_INSTR_WRDI);
	if (FUNC2(ha)) {
		FUNC1(ql_log_warn, vha, 0xb00f,
		    "Error waiting for rom done.\n");
		return -1;
	}
	return 0;
}