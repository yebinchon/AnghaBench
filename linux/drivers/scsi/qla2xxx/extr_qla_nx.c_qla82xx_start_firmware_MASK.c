#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int uint16_t ;
struct qla_hw_data {int link_width; int /*<<< orphan*/  pdev; } ;
struct TYPE_5__ {struct qla_hw_data* hw; } ;
typedef  TYPE_1__ scsi_qla_host_t ;

/* Variables and functions */
 int /*<<< orphan*/  CRB_CMDPEG_STATE ; 
 int /*<<< orphan*/  CRB_DMA_SHIFT ; 
 int /*<<< orphan*/  CRB_RCVPEG_STATE ; 
 int /*<<< orphan*/  PCI_EXP_LNKSTA ; 
 int /*<<< orphan*/  QLA82XX_DMA_SHIFT_VALUE ; 
 int /*<<< orphan*/  QLA82XX_PEG_HALT_STATUS1 ; 
 int /*<<< orphan*/  QLA82XX_PEG_HALT_STATUS2 ; 
 int QLA_FUNCTION_FAILED ; 
 scalar_t__ QLA_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_1__*,int,char*) ; 
 int /*<<< orphan*/  ql_log_fatal ; 
 scalar_t__ FUNC2 (struct qla_hw_data*) ; 
 int FUNC3 (struct qla_hw_data*) ; 
 scalar_t__ FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (struct qla_hw_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC6(scsi_qla_host_t *vha)
{
	uint16_t      lnk;
	struct qla_hw_data *ha = vha->hw;

	/* scrub dma mask expansion register */
	FUNC5(ha, CRB_DMA_SHIFT, QLA82XX_DMA_SHIFT_VALUE);

	/* Put both the PEG CMD and RCV PEG to default state
	 * of 0 before resetting the hardware
	 */
	FUNC5(ha, CRB_CMDPEG_STATE, 0);
	FUNC5(ha, CRB_RCVPEG_STATE, 0);

	/* Overwrite stale initialization register values */
	FUNC5(ha, QLA82XX_PEG_HALT_STATUS1, 0);
	FUNC5(ha, QLA82XX_PEG_HALT_STATUS2, 0);

	if (FUNC4(vha) != QLA_SUCCESS) {
		FUNC1(ql_log_fatal, vha, 0x00a7,
		    "Error trying to start fw.\n");
		return QLA_FUNCTION_FAILED;
	}

	/* Handshake with the card before we register the devices. */
	if (FUNC2(ha) != QLA_SUCCESS) {
		FUNC1(ql_log_fatal, vha, 0x00aa,
		    "Error during card handshake.\n");
		return QLA_FUNCTION_FAILED;
	}

	/* Negotiated Link width */
	FUNC0(ha->pdev, PCI_EXP_LNKSTA, &lnk);
	ha->link_width = (lnk >> 4) & 0x3f;

	/* Synchronize with Receive peg */
	return FUNC3(ha);
}