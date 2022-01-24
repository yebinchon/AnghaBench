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
typedef  int u32 ;
struct TYPE_3__ {int /*<<< orphan*/  isr_count; int /*<<< orphan*/  last_isr_time; } ;
struct TYPE_4__ {TYPE_1__ misc_stats; } ;
struct fnic {int /*<<< orphan*/ * intr; TYPE_2__ fnic_stats; int /*<<< orphan*/  legacy_pba; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int FNIC_INTX_ERR ; 
 int FNIC_INTX_NOTIFY ; 
 int FNIC_INTX_WQ_RQ_COPYWQ ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct fnic*) ; 
 int /*<<< orphan*/  FUNC2 (struct fnic*) ; 
 scalar_t__ FUNC3 (struct fnic*,int) ; 
 scalar_t__ FUNC4 (struct fnic*,int) ; 
 scalar_t__ FUNC5 (struct fnic*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  io_completions ; 
 int /*<<< orphan*/  jiffies ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long,int,int) ; 

__attribute__((used)) static irqreturn_t FUNC9(int irq, void *data)
{
	struct fnic *fnic = data;
	u32 pba;
	unsigned long work_done = 0;

	pba = FUNC6(fnic->legacy_pba);
	if (!pba)
		return IRQ_NONE;

	fnic->fnic_stats.misc_stats.last_isr_time = jiffies;
	FUNC0(&fnic->fnic_stats.misc_stats.isr_count);

	if (pba & (1 << FNIC_INTX_NOTIFY)) {
		FUNC7(&fnic->intr[FNIC_INTX_NOTIFY]);
		FUNC1(fnic);
	}

	if (pba & (1 << FNIC_INTX_ERR)) {
		FUNC7(&fnic->intr[FNIC_INTX_ERR]);
		FUNC2(fnic);
	}

	if (pba & (1 << FNIC_INTX_WQ_RQ_COPYWQ)) {
		work_done += FUNC5(fnic, io_completions);
		work_done += FUNC4(fnic, -1);
		work_done += FUNC3(fnic, -1);

		FUNC8(&fnic->intr[FNIC_INTX_WQ_RQ_COPYWQ],
					 work_done,
					 1 /* unmask intr */,
					 1 /* reset intr timer */);
	}

	return IRQ_HANDLED;
}