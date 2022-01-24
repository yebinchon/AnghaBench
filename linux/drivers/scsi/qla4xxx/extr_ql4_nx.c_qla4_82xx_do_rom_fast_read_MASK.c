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
struct scsi_qla_host {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRIVER_NAME ; 
 int /*<<< orphan*/  QLA82XX_ROMUSB_ROM_ABYTE_CNT ; 
 int /*<<< orphan*/  QLA82XX_ROMUSB_ROM_ADDRESS ; 
 int /*<<< orphan*/  QLA82XX_ROMUSB_ROM_DUMMY_BYTE_CNT ; 
 int /*<<< orphan*/  QLA82XX_ROMUSB_ROM_INSTR_OPCODE ; 
 int /*<<< orphan*/  QLA82XX_ROMUSB_ROM_RDATA ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct scsi_qla_host*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct scsi_qla_host*) ; 
 int /*<<< orphan*/  FUNC3 (struct scsi_qla_host*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static int
FUNC5(struct scsi_qla_host *ha, int addr, int *valp)
{
	FUNC3(ha, QLA82XX_ROMUSB_ROM_ADDRESS, addr);
	FUNC3(ha, QLA82XX_ROMUSB_ROM_DUMMY_BYTE_CNT, 0);
	FUNC3(ha, QLA82XX_ROMUSB_ROM_ABYTE_CNT, 3);
	FUNC3(ha, QLA82XX_ROMUSB_ROM_INSTR_OPCODE, 0xb);
	if (FUNC2(ha)) {
		FUNC0("%s: Error waiting for rom done\n", DRIVER_NAME);
		return -1;
	}
	/* reset abyte_cnt and dummy_byte_cnt */
	FUNC3(ha, QLA82XX_ROMUSB_ROM_DUMMY_BYTE_CNT, 0);
	FUNC4(10);
	FUNC3(ha, QLA82XX_ROMUSB_ROM_ABYTE_CNT, 0);

	*valp = FUNC1(ha, QLA82XX_ROMUSB_ROM_RDATA);
	return 0;
}