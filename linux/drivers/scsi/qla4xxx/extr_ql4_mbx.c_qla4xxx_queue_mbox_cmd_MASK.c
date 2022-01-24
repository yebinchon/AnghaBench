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
typedef  int /*<<< orphan*/  uint32_t ;
struct scsi_qla_host {TYPE_1__* reg; } ;
struct TYPE_2__ {int /*<<< orphan*/  ctrl_status; int /*<<< orphan*/ * mailbox; } ;

/* Variables and functions */
 int /*<<< orphan*/  CSR_INTR_RISC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC3(struct scsi_qla_host *ha, uint32_t *mbx_cmd,
			    int in_count)
{
	int i;

	/* Load all mailbox registers, except mailbox 0. */
	for (i = 1; i < in_count; i++)
		FUNC2(mbx_cmd[i], &ha->reg->mailbox[i]);

	/* Wakeup firmware  */
	FUNC2(mbx_cmd[0], &ha->reg->mailbox[0]);
	FUNC0(&ha->reg->mailbox[0]);
	FUNC2(FUNC1(CSR_INTR_RISC), &ha->reg->ctrl_status);
	FUNC0(&ha->reg->ctrl_status);
}