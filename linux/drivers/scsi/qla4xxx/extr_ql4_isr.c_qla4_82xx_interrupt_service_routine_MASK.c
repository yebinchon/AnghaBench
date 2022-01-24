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
struct scsi_qla_host {TYPE_1__* qla4_82xx_reg; int /*<<< orphan*/  flags; } ;
struct TYPE_2__ {int /*<<< orphan*/  host_int; int /*<<< orphan*/ * mailbox_out; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INIT_DONE ; 
 int HSRX_RISC_IOCB_INT ; 
 int HSRX_RISC_MB_INT ; 
 int /*<<< orphan*/  FUNC0 (struct scsi_qla_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct scsi_qla_host*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC5(struct scsi_qla_host *ha,
    uint32_t intr_status)
{
	/* Process response queue interrupt. */
	if ((intr_status & HSRX_RISC_IOCB_INT) &&
	    FUNC3(AF_INIT_DONE, &ha->flags))
		FUNC1(ha);

	/* Process mailbox/asynch event interrupt.*/
	if (intr_status & HSRX_RISC_MB_INT)
		FUNC0(ha,
		    FUNC2(&ha->qla4_82xx_reg->mailbox_out[0]));

	/* clear the interrupt */
	FUNC4(0, &ha->qla4_82xx_reg->host_int);
	FUNC2(&ha->qla4_82xx_reg->host_int);
}