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
struct TYPE_3__ {int /*<<< orphan*/  errnotify_isr_cnt; int /*<<< orphan*/  last_isr_time; } ;
struct TYPE_4__ {TYPE_1__ misc; } ;
struct snic {int /*<<< orphan*/ * intr; TYPE_2__ s_stats; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 size_t SNIC_MSIX_ERR_NOTIFY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC1 (struct snic*) ; 
 int /*<<< orphan*/  FUNC2 (struct snic*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t
FUNC4(int irq, void *data)
{
	struct snic *snic = data;

	snic->s_stats.misc.last_isr_time = jiffies;
	FUNC0(&snic->s_stats.misc.errnotify_isr_cnt);

	FUNC3(&snic->intr[SNIC_MSIX_ERR_NOTIFY]);
	FUNC2(snic);

	/*Handling link events */
	FUNC1(snic);

	return IRQ_HANDLED;
}