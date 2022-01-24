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
struct gvp11_hostdata {TYPE_1__* regs; } ;
struct Scsi_Host {int /*<<< orphan*/  host_lock; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {unsigned int CNTR; } ;

/* Variables and functions */
 unsigned int GVP11_DMAC_INT_PENDING ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 struct gvp11_hostdata* FUNC0 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct Scsi_Host*) ; 

__attribute__((used)) static irqreturn_t FUNC4(int irq, void *data)
{
	struct Scsi_Host *instance = data;
	struct gvp11_hostdata *hdata = FUNC0(instance);
	unsigned int status = hdata->regs->CNTR;
	unsigned long flags;

	if (!(status & GVP11_DMAC_INT_PENDING))
		return IRQ_NONE;

	FUNC1(instance->host_lock, flags);
	FUNC3(instance);
	FUNC2(instance->host_lock, flags);
	return IRQ_HANDLED;
}