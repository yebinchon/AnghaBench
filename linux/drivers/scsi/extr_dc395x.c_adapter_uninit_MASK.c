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
struct AdapterCtlBlk {int /*<<< orphan*/  io_port_len; scalar_t__ io_port_base; scalar_t__ irq_level; int /*<<< orphan*/  scsi_host; int /*<<< orphan*/  selto_timer; int /*<<< orphan*/  waiting_timer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct AdapterCtlBlk*) ; 
 int /*<<< orphan*/  FUNC3 (struct AdapterCtlBlk*) ; 
 int /*<<< orphan*/  FUNC4 (struct AdapterCtlBlk*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,struct AdapterCtlBlk*) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(struct AdapterCtlBlk *acb)
{
	unsigned long flags;
	FUNC0(acb->scsi_host, flags);

	/* remove timers */
	if (FUNC8(&acb->waiting_timer))
		FUNC5(&acb->waiting_timer);
	if (FUNC8(&acb->selto_timer))
		FUNC5(&acb->selto_timer);

	FUNC4(acb);
	FUNC2(acb);
	FUNC1(acb->scsi_host, flags);

	if (acb->irq_level)
		FUNC6(acb->irq_level, acb);
	if (acb->io_port_base)
		FUNC7(acb->io_port_base, acb->io_port_len);

	FUNC3(acb);
}