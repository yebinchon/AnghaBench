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
typedef  int u32 ;
struct scsi_qla_host {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KERN_INFO ; 
 scalar_t__ QLA83XX_PORT0_RXB_PAUSE_THRS ; 
 scalar_t__ QLA83XX_PORT0_RXB_TC_MAX_CELL ; 
 scalar_t__ QLA83XX_PORT0_RXB_TC_STATS ; 
 scalar_t__ QLA83XX_PORT1_RXB_PAUSE_THRS ; 
 scalar_t__ QLA83XX_PORT1_RXB_TC_MAX_CELL ; 
 scalar_t__ QLA83XX_PORT1_RXB_TC_STATS ; 
 scalar_t__ QLA83XX_PORT2_IFB_PAUSE_THRS ; 
 scalar_t__ QLA83XX_PORT3_IFB_PAUSE_THRS ; 
 scalar_t__ QLA83XX_SRE_SHIM_CONTROL ; 
 int QLA_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct scsi_qla_host*,char*,...) ; 
 int FUNC3 (struct scsi_qla_host*,scalar_t__,int*) ; 
 int /*<<< orphan*/  FUNC4 (struct scsi_qla_host*,scalar_t__,int) ; 

__attribute__((used)) static void FUNC5(struct scsi_qla_host *ha)
{
	u32 val = 0, val1 = 0;
	int i, status = QLA_SUCCESS;

	status = FUNC3(ha, QLA83XX_SRE_SHIM_CONTROL, &val);
	FUNC0(FUNC2(KERN_INFO, ha, "SRE-Shim Ctrl:0x%x\n", val));

	/* Port 0 Rx Buffer Pause Threshold Registers. */
	FUNC0(FUNC2(KERN_INFO, ha,
		"Port 0 Rx Buffer Pause Threshold Registers[TC7..TC0]:"));
	for (i = 0; i < 8; i++) {
		status = FUNC3(ha,
				QLA83XX_PORT0_RXB_PAUSE_THRS + (i * 0x4), &val);
		FUNC0(FUNC1("0x%x ", val));
	}

	FUNC0(FUNC1("\n"));

	/* Port 1 Rx Buffer Pause Threshold Registers. */
	FUNC0(FUNC2(KERN_INFO, ha,
		"Port 1 Rx Buffer Pause Threshold Registers[TC7..TC0]:"));
	for (i = 0; i < 8; i++) {
		status = FUNC3(ha,
				QLA83XX_PORT1_RXB_PAUSE_THRS + (i * 0x4), &val);
		FUNC0(FUNC1("0x%x  ", val));
	}

	FUNC0(FUNC1("\n"));

	/* Port 0 RxB Traffic Class Max Cell Registers. */
	FUNC0(FUNC2(KERN_INFO, ha,
		"Port 0 RxB Traffic Class Max Cell Registers[3..0]:"));
	for (i = 0; i < 4; i++) {
		status = FUNC3(ha,
			       QLA83XX_PORT0_RXB_TC_MAX_CELL + (i * 0x4), &val);
		FUNC0(FUNC1("0x%x  ", val));
	}

	FUNC0(FUNC1("\n"));

	/* Port 1 RxB Traffic Class Max Cell Registers. */
	FUNC0(FUNC2(KERN_INFO, ha,
		"Port 1 RxB Traffic Class Max Cell Registers[3..0]:"));
	for (i = 0; i < 4; i++) {
		status = FUNC3(ha,
			       QLA83XX_PORT1_RXB_TC_MAX_CELL + (i * 0x4), &val);
		FUNC0(FUNC1("0x%x  ", val));
	}

	FUNC0(FUNC1("\n"));

	/* Port 0 RxB Rx Traffic Class Stats. */
	FUNC0(FUNC2(KERN_INFO, ha,
			  "Port 0 RxB Rx Traffic Class Stats [TC7..TC0]"));
	for (i = 7; i >= 0; i--) {
		status = FUNC3(ha,
						   QLA83XX_PORT0_RXB_TC_STATS,
						   &val);
		val &= ~(0x7 << 29);    /* Reset bits 29 to 31 */
		FUNC4(ha, QLA83XX_PORT0_RXB_TC_STATS,
					  (val | (i << 29)));
		status = FUNC3(ha,
						   QLA83XX_PORT0_RXB_TC_STATS,
						   &val);
		FUNC0(FUNC1("0x%x  ", val));
	}

	FUNC0(FUNC1("\n"));

	/* Port 1 RxB Rx Traffic Class Stats. */
	FUNC0(FUNC2(KERN_INFO, ha,
			  "Port 1 RxB Rx Traffic Class Stats [TC7..TC0]"));
	for (i = 7; i >= 0; i--) {
		status = FUNC3(ha,
						   QLA83XX_PORT1_RXB_TC_STATS,
						   &val);
		val &= ~(0x7 << 29);    /* Reset bits 29 to 31 */
		FUNC4(ha, QLA83XX_PORT1_RXB_TC_STATS,
					  (val | (i << 29)));
		status = FUNC3(ha,
						   QLA83XX_PORT1_RXB_TC_STATS,
						   &val);
		FUNC0(FUNC1("0x%x  ", val));
	}

	FUNC0(FUNC1("\n"));

	status = FUNC3(ha, QLA83XX_PORT2_IFB_PAUSE_THRS,
					   &val);
	status = FUNC3(ha, QLA83XX_PORT3_IFB_PAUSE_THRS,
					   &val1);

	FUNC0(FUNC2(KERN_INFO, ha,
			  "IFB-Pause Thresholds: Port 2:0x%x, Port 3:0x%x\n",
			  val, val1));
}