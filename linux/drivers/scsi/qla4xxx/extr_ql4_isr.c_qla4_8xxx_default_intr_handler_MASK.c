#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint8_t ;
typedef  int uint32_t ;
struct scsi_qla_host {int /*<<< orphan*/  hardware_lock; int /*<<< orphan*/  isr_count; TYPE_2__* isp_ops; TYPE_1__* qla4_82xx_reg; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_4__ {int /*<<< orphan*/  (* interrupt_service_routine ) (struct scsi_qla_host*,int) ;} ;
struct TYPE_3__ {int /*<<< orphan*/  host_status; int /*<<< orphan*/  host_int; } ;

/* Variables and functions */
 int HSRX_RISC_IOCB_INT ; 
 int HSRX_RISC_MB_INT ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int ISRX_82XX_RISC_INT ; 
 scalar_t__ MAX_REQS_SERVICED_PER_INTR ; 
 scalar_t__ FUNC0 (struct scsi_qla_host*) ; 
 scalar_t__ FUNC1 (struct scsi_qla_host*) ; 
 int /*<<< orphan*/  FUNC2 (struct scsi_qla_host*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int,void*) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (struct scsi_qla_host*,int) ; 

irqreturn_t
FUNC8(int irq, void *dev_id)
{
	struct scsi_qla_host *ha = dev_id;
	unsigned long   flags;
	uint32_t intr_status;
	uint8_t reqs_count = 0;

	if (FUNC0(ha) || FUNC1(ha)) {
		FUNC3(irq, dev_id);
	} else {
		FUNC5(&ha->hardware_lock, flags);
		while (1) {
			if (!(FUNC4(&ha->qla4_82xx_reg->host_int) &
			    ISRX_82XX_RISC_INT)) {
				FUNC2(ha, reqs_count);
				break;
			}

			intr_status =  FUNC4(&ha->qla4_82xx_reg->host_status);
			if ((intr_status &
			    (HSRX_RISC_MB_INT | HSRX_RISC_IOCB_INT)) == 0) {
				FUNC2(ha, reqs_count);
				break;
			}

			ha->isp_ops->interrupt_service_routine(ha, intr_status);

			if (++reqs_count == MAX_REQS_SERVICED_PER_INTR)
				break;
		}
		ha->isr_count++;
		FUNC6(&ha->hardware_lock, flags);
	}
	return IRQ_HANDLED;
}