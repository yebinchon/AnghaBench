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
struct qla_hw_data {int /*<<< orphan*/  hw_lock; int /*<<< orphan*/  pdev; } ;
typedef  int /*<<< orphan*/  scsi_qla_host_t ;

/* Variables and functions */
 int /*<<< orphan*/  CRB_RCVPEG_STATE ; 
#define  PHAN_INITIALIZE_ACK 130 
#define  PHAN_INITIALIZE_COMPLETE 129 
#define  PHAN_INITIALIZE_FAILED 128 
 int QLA_FUNCTION_FAILED ; 
 int QLA_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,char*,int,...) ; 
 int /*<<< orphan*/  ql_log_fatal ; 
 int /*<<< orphan*/  ql_log_info ; 
 int FUNC3 (struct qla_hw_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct qla_hw_data*,int /*<<< orphan*/ ,int const) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC7(struct qla_hw_data *ha)
{
	u32 val = 0;
	int retries = 60;
	scsi_qla_host_t *vha = FUNC1(ha->pdev);

	do {
		FUNC5(&ha->hw_lock);
		val = FUNC3(ha, CRB_RCVPEG_STATE);
		FUNC6(&ha->hw_lock);

		switch (val) {
		case PHAN_INITIALIZE_COMPLETE:
		case PHAN_INITIALIZE_ACK:
			return QLA_SUCCESS;
		case PHAN_INITIALIZE_FAILED:
			break;
		default:
			break;
		}
		FUNC2(ql_log_info, vha, 0x00ab,
		    "CRB_RCVPEG_STATE: 0x%x and retries: 0x%x.\n",
		    val, retries);

		FUNC0(500);

	} while (--retries);

	FUNC2(ql_log_fatal, vha, 0x00ac,
	    "Rcv Peg initialization failed: 0x%x.\n", val);
	FUNC5(&ha->hw_lock);
	FUNC4(ha, CRB_RCVPEG_STATE, PHAN_INITIALIZE_FAILED);
	FUNC6(&ha->hw_lock);
	return QLA_FUNCTION_FAILED;
}