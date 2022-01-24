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
struct a3000_hostdata {TYPE_1__* regs; } ;
struct Scsi_Host {int /*<<< orphan*/  host_lock; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {unsigned int ISTR; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 unsigned int ISTR_INTS ; 
 unsigned int ISTR_INT_P ; 
 int /*<<< orphan*/  FUNC0 (char*,unsigned int) ; 
 struct a3000_hostdata* FUNC1 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (struct Scsi_Host*) ; 

__attribute__((used)) static irqreturn_t FUNC5(int irq, void *data)
{
	struct Scsi_Host *instance = data;
	struct a3000_hostdata *hdata = FUNC1(instance);
	unsigned int status = hdata->regs->ISTR;
	unsigned long flags;

	if (!(status & ISTR_INT_P))
		return IRQ_NONE;
	if (status & ISTR_INTS) {
		FUNC2(instance->host_lock, flags);
		FUNC4(instance);
		FUNC3(instance->host_lock, flags);
		return IRQ_HANDLED;
	}
	FUNC0("Non-serviced A3000 SCSI-interrupt? ISTR = %02x\n", status);
	return IRQ_NONE;
}