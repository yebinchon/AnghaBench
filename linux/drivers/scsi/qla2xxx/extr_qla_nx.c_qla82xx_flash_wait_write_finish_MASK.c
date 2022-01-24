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
typedef  int uint32_t ;
struct qla_hw_data {int /*<<< orphan*/  pdev; } ;
typedef  int /*<<< orphan*/  scsi_qla_host_t ;

/* Variables and functions */
 int /*<<< orphan*/  QLA82XX_ROMUSB_ROM_ABYTE_CNT ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  ql_log_warn ; 
 int FUNC3 (struct qla_hw_data*,int*) ; 
 int /*<<< orphan*/  FUNC4 (struct qla_hw_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static int
FUNC6(struct qla_hw_data *ha)
{
	long timeout = 0;
	uint32_t done = 1 ;
	uint32_t val;
	int ret = 0;
	scsi_qla_host_t *vha = FUNC1(ha->pdev);

	FUNC4(ha, QLA82XX_ROMUSB_ROM_ABYTE_CNT, 0);
	while ((done != 0) && (ret == 0)) {
		ret = FUNC3(ha, &val);
		done = val & 1;
		timeout++;
		FUNC5(10);
		FUNC0();
		if (timeout >= 50000) {
			FUNC2(ql_log_warn, vha, 0xb00d,
			    "Timeout reached waiting for write finish.\n");
			return -1;
		}
	}
	return ret;
}