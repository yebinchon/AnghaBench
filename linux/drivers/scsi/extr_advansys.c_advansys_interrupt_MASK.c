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
struct TYPE_2__ {int /*<<< orphan*/  adv_dvc_var; int /*<<< orphan*/  asc_dvc_var; } ;
struct asc_board {TYPE_1__ dvc_var; } ;
struct Scsi_Host {int /*<<< orphan*/  host_lock; int /*<<< orphan*/  io_port; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,...) ; 
 scalar_t__ FUNC1 (struct asc_board*) ; 
 int /*<<< orphan*/  FUNC2 (struct Scsi_Host*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  interrupt ; 
 struct asc_board* FUNC6 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static irqreturn_t FUNC9(int irq, void *dev_id)
{
	struct Scsi_Host *shost = dev_id;
	struct asc_board *boardp = FUNC6(shost);
	irqreturn_t result = IRQ_NONE;
	unsigned long flags;

	FUNC0(2, "boardp 0x%p\n", boardp);
	FUNC7(shost->host_lock, flags);
	if (FUNC1(boardp)) {
		if (FUNC5(shost->io_port)) {
			result = IRQ_HANDLED;
			FUNC2(shost, interrupt);
			FUNC0(1, "before AscISR()\n");
			FUNC4(&boardp->dvc_var.asc_dvc_var);
		}
	} else {
		FUNC0(1, "before AdvISR()\n");
		if (FUNC3(&boardp->dvc_var.adv_dvc_var)) {
			result = IRQ_HANDLED;
			FUNC2(shost, interrupt);
		}
	}
	FUNC8(shost->host_lock, flags);

	FUNC0(1, "end\n");
	return result;
}