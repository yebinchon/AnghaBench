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
typedef  int uint32_t ;
struct scsi_qla_host {TYPE_1__* reg; } ;
struct TYPE_2__ {int /*<<< orphan*/  ctrl_status; int /*<<< orphan*/ * mailbox; } ;

/* Variables and functions */
 int CSR_SCSI_COMPLETION_INTR ; 
 int CSR_SCSI_PROCESSOR_INTR ; 
 int /*<<< orphan*/  FUNC0 (struct scsi_qla_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct scsi_qla_host*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC5(struct scsi_qla_host * ha,
				       uint32_t intr_status)
{
	/* Process response queue interrupt. */
	if (intr_status & CSR_SCSI_COMPLETION_INTR)
		FUNC1(ha);

	/* Process mailbox/asynch event	 interrupt.*/
	if (intr_status & CSR_SCSI_PROCESSOR_INTR) {
		FUNC0(ha,
					   FUNC2(&ha->reg->mailbox[0]));

		/* Clear Mailbox Interrupt */
		FUNC4(FUNC3(CSR_SCSI_PROCESSOR_INTR),
		       &ha->reg->ctrl_status);
		FUNC2(&ha->reg->ctrl_status);
	}
}