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
typedef  size_t uint32_t ;
struct scsi_qla_host {unsigned long nx_dev_init_timeout; TYPE_1__* isp_ops; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* idc_unlock ) (struct scsi_qla_host*) ;int /*<<< orphan*/  (* idc_lock ) (struct scsi_qla_host*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DRIVER_NAME ; 
 unsigned long HZ ; 
 int /*<<< orphan*/  KERN_INFO ; 
 int /*<<< orphan*/  KERN_WARNING ; 
 size_t MAX_STATES ; 
 int /*<<< orphan*/  QLA8XXX_CRB_DEV_STATE ; 
#define  QLA8XXX_DEV_COLD 134 
#define  QLA8XXX_DEV_FAILED 133 
#define  QLA8XXX_DEV_INITIALIZING 132 
#define  QLA8XXX_DEV_NEED_QUIESCENT 131 
#define  QLA8XXX_DEV_NEED_RESET 130 
#define  QLA8XXX_DEV_QUIESCENT 129 
#define  QLA8XXX_DEV_READY 128 
 int QLA_ERROR ; 
 int QLA_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (struct scsi_qla_host*) ; 
 int /*<<< orphan*/  FUNC2 (struct scsi_qla_host*) ; 
 int /*<<< orphan*/  FUNC3 (struct scsi_qla_host*) ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 char** qdev_state ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct scsi_qla_host*,char*,size_t,...) ; 
 int /*<<< orphan*/  ql4xdontresethba ; 
 int /*<<< orphan*/  FUNC6 (struct scsi_qla_host*) ; 
 int /*<<< orphan*/  FUNC7 (struct scsi_qla_host*) ; 
 int FUNC8 (struct scsi_qla_host*) ; 
 int /*<<< orphan*/  FUNC9 (struct scsi_qla_host*) ; 
 size_t FUNC10 (struct scsi_qla_host*,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct scsi_qla_host*) ; 
 int /*<<< orphan*/  FUNC12 (struct scsi_qla_host*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (struct scsi_qla_host*) ; 
 int /*<<< orphan*/  FUNC14 (struct scsi_qla_host*) ; 
 int /*<<< orphan*/  FUNC15 (struct scsi_qla_host*) ; 
 int /*<<< orphan*/  FUNC16 (struct scsi_qla_host*) ; 
 int /*<<< orphan*/  FUNC17 (struct scsi_qla_host*) ; 
 int /*<<< orphan*/  FUNC18 (struct scsi_qla_host*) ; 
 int /*<<< orphan*/  FUNC19 (struct scsi_qla_host*) ; 
 int /*<<< orphan*/  FUNC20 (struct scsi_qla_host*) ; 
 int /*<<< orphan*/  FUNC21 (struct scsi_qla_host*) ; 
 int /*<<< orphan*/  FUNC22 (struct scsi_qla_host*) ; 
 int /*<<< orphan*/  FUNC23 (struct scsi_qla_host*) ; 
 int /*<<< orphan*/  FUNC24 (struct scsi_qla_host*) ; 
 int /*<<< orphan*/  FUNC25 (struct scsi_qla_host*) ; 
 scalar_t__ FUNC26 (unsigned long,unsigned long) ; 

int FUNC27(struct scsi_qla_host *ha)
{
	uint32_t dev_state;
	int rval = QLA_SUCCESS;
	unsigned long dev_init_timeout;

	rval = FUNC11(ha);
	if (rval == QLA_ERROR)
		goto exit_state_handler;

	dev_state = FUNC10(ha, QLA8XXX_CRB_DEV_STATE);
	FUNC0(FUNC5(KERN_INFO, ha, "Device state is 0x%x = %s\n",
			  dev_state, dev_state < MAX_STATES ?
			  qdev_state[dev_state] : "Unknown"));

	/* wait for 30 seconds for device to go ready */
	dev_init_timeout = jiffies + (ha->nx_dev_init_timeout * HZ);

	ha->isp_ops->idc_lock(ha);
	while (1) {

		if (FUNC26(jiffies, dev_init_timeout)) {
			FUNC5(KERN_WARNING, ha,
				   "%s: Device Init Failed 0x%x = %s\n",
				   DRIVER_NAME,
				   dev_state, dev_state < MAX_STATES ?
				   qdev_state[dev_state] : "Unknown");
			FUNC12(ha, QLA8XXX_CRB_DEV_STATE,
					    QLA8XXX_DEV_FAILED);
		}

		dev_state = FUNC10(ha, QLA8XXX_CRB_DEV_STATE);
		FUNC5(KERN_INFO, ha, "Device state is 0x%x = %s\n",
			   dev_state, dev_state < MAX_STATES ?
			   qdev_state[dev_state] : "Unknown");

		/* NOTE: Make sure idc unlocked upon exit of switch statement */
		switch (dev_state) {
		case QLA8XXX_DEV_READY:
			goto exit;
		case QLA8XXX_DEV_COLD:
			rval = FUNC8(ha);
			goto exit;
		case QLA8XXX_DEV_INITIALIZING:
			ha->isp_ops->idc_unlock(ha);
			FUNC4(1000);
			ha->isp_ops->idc_lock(ha);
			break;
		case QLA8XXX_DEV_NEED_RESET:
			/*
			 * For ISP8324 and ISP8042, if NEED_RESET is set by any
			 * driver, it should be honored, irrespective of
			 * IDC_CTRL DONTRESET_BIT0
			 */
			if (FUNC2(ha) || FUNC3(ha)) {
				FUNC7(ha);
			} else if (FUNC1(ha)) {
				if (!ql4xdontresethba) {
					FUNC6(ha);
					/* Update timeout value after need
					 * reset handler */
					dev_init_timeout = jiffies +
						(ha->nx_dev_init_timeout * HZ);
				} else {
					ha->isp_ops->idc_unlock(ha);
					FUNC4(1000);
					ha->isp_ops->idc_lock(ha);
				}
			}
			break;
		case QLA8XXX_DEV_NEED_QUIESCENT:
			/* idc locked/unlocked in handler */
			FUNC9(ha);
			break;
		case QLA8XXX_DEV_QUIESCENT:
			ha->isp_ops->idc_unlock(ha);
			FUNC4(1000);
			ha->isp_ops->idc_lock(ha);
			break;
		case QLA8XXX_DEV_FAILED:
			ha->isp_ops->idc_unlock(ha);
			FUNC13(ha);
			rval = QLA_ERROR;
			ha->isp_ops->idc_lock(ha);
			goto exit;
		default:
			ha->isp_ops->idc_unlock(ha);
			FUNC13(ha);
			rval = QLA_ERROR;
			ha->isp_ops->idc_lock(ha);
			goto exit;
		}
	}
exit:
	ha->isp_ops->idc_unlock(ha);
exit_state_handler:
	return rval;
}