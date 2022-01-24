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
struct TYPE_3__ {int /*<<< orphan*/  ack_isr_cnt; int /*<<< orphan*/  last_isr_time; } ;
struct TYPE_4__ {TYPE_1__ misc; } ;
struct snic {int /*<<< orphan*/ * intr; TYPE_2__ s_stats; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 size_t SNIC_MSIX_WQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  jiffies ; 
 unsigned long FUNC1 (struct snic*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long,int,int) ; 

__attribute__((used)) static irqreturn_t
FUNC3(int irq, void *data)
{
	struct snic *snic = data;
	unsigned long wq_work_done = 0;

	snic->s_stats.misc.last_isr_time = jiffies;
	FUNC0(&snic->s_stats.misc.ack_isr_cnt);

	wq_work_done = FUNC1(snic, -1);
	FUNC2(&snic->intr[SNIC_MSIX_WQ],
				  wq_work_done,
				  1 /* unmask intr */,
				  1 /* reset intr timer */);

	return IRQ_HANDLED;
}