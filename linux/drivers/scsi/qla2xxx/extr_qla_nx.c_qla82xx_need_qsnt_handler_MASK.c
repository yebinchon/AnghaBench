#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct qla_hw_data {int dummy; } ;
struct TYPE_8__ {scalar_t__ online; } ;
struct TYPE_9__ {TYPE_1__ flags; struct qla_hw_data* hw; } ;
typedef  TYPE_2__ scsi_qla_host_t ;

/* Variables and functions */
 int HZ ; 
 int /*<<< orphan*/  QLA2XXX_DRIVER_NAME ; 
 int /*<<< orphan*/  QLA82XX_CRB_DEV_STATE ; 
 int /*<<< orphan*/  QLA82XX_CRB_DRV_ACTIVE ; 
 int /*<<< orphan*/  QLA82XX_CRB_DRV_STATE ; 
 int QLA8XXX_DEV_NEED_QUIESCENT ; 
 int /*<<< orphan*/  QLA8XXX_DEV_QUIESCENT ; 
 int /*<<< orphan*/  QLA8XXX_DEV_READY ; 
 int jiffies ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_2__*,int,char*,...) ; 
 int /*<<< orphan*/  ql_log_info ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (struct qla_hw_data*) ; 
 int /*<<< orphan*/  FUNC6 (struct qla_hw_data*) ; 
 int FUNC7 (struct qla_hw_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct qla_hw_data*) ; 
 int /*<<< orphan*/  FUNC9 (struct qla_hw_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int,unsigned long) ; 

__attribute__((used)) static void
FUNC11(scsi_qla_host_t *vha)
{
	struct qla_hw_data *ha = vha->hw;
	uint32_t dev_state, drv_state, drv_active;
	unsigned long reset_timeout;

	if (vha->flags.online) {
		/*Block any further I/O and wait for pending cmnds to complete*/
		FUNC3(vha);
	}

	/* Set the quiescence ready bit */
	FUNC8(ha);

	/*wait for 30 secs for other functions to ack */
	reset_timeout = jiffies + (30 * HZ);

	drv_state = FUNC7(ha, QLA82XX_CRB_DRV_STATE);
	drv_active = FUNC7(ha, QLA82XX_CRB_DRV_ACTIVE);
	/* Its 2 that is written when qsnt is acked, moving one bit */
	drv_active = drv_active << 0x01;

	while (drv_state != drv_active) {

		if (FUNC10(jiffies, reset_timeout)) {
			/* quiescence timeout, other functions didn't ack
			 * changing the state to DEV_READY
			 */
			FUNC1(ql_log_info, vha, 0xb023,
			    "%s : QUIESCENT TIMEOUT DRV_ACTIVE:%d "
			    "DRV_STATE:%d.\n", QLA2XXX_DRIVER_NAME,
			    drv_active, drv_state);
			FUNC9(ha, QLA82XX_CRB_DEV_STATE,
			    QLA8XXX_DEV_READY);
			FUNC1(ql_log_info, vha, 0xb025,
			    "HW State: DEV_READY.\n");
			FUNC6(ha);
			FUNC2(vha);
			FUNC5(ha);

			FUNC4(vha);
			return;
		}

		FUNC6(ha);
		FUNC0(1000);
		FUNC5(ha);

		drv_state = FUNC7(ha, QLA82XX_CRB_DRV_STATE);
		drv_active = FUNC7(ha, QLA82XX_CRB_DRV_ACTIVE);
		drv_active = drv_active << 0x01;
	}
	dev_state = FUNC7(ha, QLA82XX_CRB_DEV_STATE);
	/* everyone acked so set the state to DEV_QUIESCENCE */
	if (dev_state == QLA8XXX_DEV_NEED_QUIESCENT) {
		FUNC1(ql_log_info, vha, 0xb026,
		    "HW State: DEV_QUIESCENT.\n");
		FUNC9(ha, QLA82XX_CRB_DEV_STATE, QLA8XXX_DEV_QUIESCENT);
	}
}