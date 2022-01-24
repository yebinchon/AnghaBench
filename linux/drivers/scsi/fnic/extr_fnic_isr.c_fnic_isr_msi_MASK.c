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
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct fnic*,int) ; 
 scalar_t__ FUNC2 (struct fnic*,int) ; 
 scalar_t__ FUNC3 (struct fnic*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  io_completions ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long,int,int) ; 

__attribute__((used)) static irqreturn_t FUNC5(int irq, void *data)
{
	struct fnic *fnic = data;
	unsigned long work_done = 0;

	fnic->fnic_stats.misc_stats.last_isr_time = jiffies;
	FUNC0(&fnic->fnic_stats.misc_stats.isr_count);

	work_done += FUNC3(fnic, io_completions);
	work_done += FUNC2(fnic, -1);
	work_done += FUNC1(fnic, -1);

	FUNC4(&fnic->intr[0],
				 work_done,
				 1 /* unmask intr */,
				 1 /* reset intr timer */);

	return IRQ_HANDLED;
}