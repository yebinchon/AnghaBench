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
struct scsi_qla_host {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_83XX_MBOX_INTR_ON ; 
 int /*<<< orphan*/  AF_HA_REMOVAL ; 
 int /*<<< orphan*/  AF_INTERRUPTS_ON ; 
 int /*<<< orphan*/  AF_IRQ_ATTACHED ; 
 int /*<<< orphan*/  AF_ONLINE ; 
 scalar_t__ FUNC0 (struct scsi_qla_host*) ; 
 scalar_t__ FUNC1 (struct scsi_qla_host*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct scsi_qla_host *ha)
{
	int rval = 1;

	if (FUNC0(ha) || FUNC1(ha)) {
		if (FUNC2(AF_IRQ_ATTACHED, &ha->flags) &&
		    FUNC2(AF_83XX_MBOX_INTR_ON, &ha->flags))
			rval = 0;
	} else {
		if (FUNC2(AF_IRQ_ATTACHED, &ha->flags) &&
		    FUNC2(AF_INTERRUPTS_ON, &ha->flags) &&
		    FUNC2(AF_ONLINE, &ha->flags) &&
		    !FUNC2(AF_HA_REMOVAL, &ha->flags))
			rval = 0;
	}

	return rval;
}