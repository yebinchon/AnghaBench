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
struct TYPE_3__ {int /*<<< orphan*/  isr_count; int /*<<< orphan*/  last_isr_time; } ;
struct TYPE_4__ {TYPE_1__ misc_stats; } ;
struct fnic {int /*<<< orphan*/ * intr; TYPE_2__ fnic_stats; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 size_t FNIC_MSIX_WQ ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 unsigned long FUNC1 (struct fnic*,int) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long,int,int) ; 

__attribute__((used)) static irqreturn_t FUNC3(int irq, void *data)
{
	struct fnic *fnic = data;
	unsigned long wq_work_done = 0;

	fnic->fnic_stats.misc_stats.last_isr_time = jiffies;
	FUNC0(&fnic->fnic_stats.misc_stats.isr_count);

	wq_work_done = FUNC1(fnic, -1);
	FUNC2(&fnic->intr[FNIC_MSIX_WQ],
				 wq_work_done,
				 1 /* unmask intr */,
				 1 /* reset intr timer */);
	return IRQ_HANDLED;
}