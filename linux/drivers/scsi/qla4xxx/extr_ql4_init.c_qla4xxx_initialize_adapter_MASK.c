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
struct scsi_qla_host {int /*<<< orphan*/  host_no; int /*<<< orphan*/  flags; TYPE_1__* isp_ops; scalar_t__ eeprom_cmd_data; } ;
struct TYPE_2__ {int (* start_firmware ) (struct scsi_qla_host*) ;int (* get_sys_info ) (struct scsi_qla_host*) ;int /*<<< orphan*/  (* disable_intrs ) (struct scsi_qla_host*) ;int /*<<< orphan*/  (* pci_config ) (struct scsi_qla_host*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  AF_ONLINE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KERN_INFO ; 
 int QLA_ERROR ; 
 int RESET_ADAPTER ; 
 scalar_t__ FUNC1 (struct scsi_qla_host*) ; 
 scalar_t__ FUNC2 (struct scsi_qla_host*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct scsi_qla_host*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct scsi_qla_host*) ; 
 int FUNC6 (struct scsi_qla_host*) ; 
 int /*<<< orphan*/  FUNC7 (struct scsi_qla_host*,int) ; 
 int FUNC8 (struct scsi_qla_host*) ; 
 int /*<<< orphan*/  FUNC9 (struct scsi_qla_host*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct scsi_qla_host*) ; 
 int /*<<< orphan*/  FUNC12 (struct scsi_qla_host*) ; 
 int FUNC13 (struct scsi_qla_host*) ; 
 int FUNC14 (struct scsi_qla_host*) ; 

int FUNC15(struct scsi_qla_host *ha, int is_reset)
{
	int status = QLA_ERROR;

	ha->eeprom_cmd_data = 0;

	FUNC4(KERN_INFO, ha, "Configuring PCI space...\n");
	ha->isp_ops->pci_config(ha);

	ha->isp_ops->disable_intrs(ha);

	/* Initialize the Host adapter request/response queues and firmware */
	if (ha->isp_ops->start_firmware(ha) == QLA_ERROR)
		goto exit_init_hba;

	/*
	 * For ISP83XX, mailbox and IOCB interrupts are enabled separately.
	 * Mailbox interrupts must be enabled prior to issuing any mailbox
	 * command in order to prevent the possibility of losing interrupts
	 * while switching from polling to interrupt mode. IOCB interrupts are
	 * enabled via isp_ops->enable_intrs.
	 */
	if (FUNC1(ha) || FUNC2(ha))
		FUNC5(ha);

	if (FUNC6(ha) == QLA_ERROR)
		goto exit_init_hba;

	if (ha->isp_ops->get_sys_info(ha) == QLA_ERROR)
		goto exit_init_hba;

	FUNC9(ha);

	status = FUNC8(ha);
	if (status == QLA_ERROR)
		goto exit_init_hba;

	if (is_reset == RESET_ADAPTER)
		FUNC7(ha, is_reset);

	FUNC10(AF_ONLINE, &ha->flags);

exit_init_hba:
	FUNC0(FUNC3("scsi%ld: initialize adapter: %s\n", ha->host_no,
	    status == QLA_ERROR ? "FAILED" : "SUCCEEDED"));
	return status;
}