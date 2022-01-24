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
typedef  scalar_t__ uint64_t ;
typedef  scalar_t__ uint32_t ;
struct timer_list {int dummy; } ;
struct TYPE_3__ {scalar_t__ sli_intr; scalar_t__ sli_prev_intr; scalar_t__ sli_ips; } ;
struct TYPE_4__ {TYPE_1__ slistat; } ;
struct lpfc_hba {int eratt_poll_interval; int /*<<< orphan*/  eratt_poll; TYPE_2__ sli; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int) ; 
 int /*<<< orphan*/  eratt_poll ; 
 struct lpfc_hba* FUNC1 (struct lpfc_hba*,struct timer_list*,int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 scalar_t__ FUNC2 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC3 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC5 (int) ; 

void FUNC6(struct timer_list *t)
{
	struct lpfc_hba *phba;
	uint32_t eratt = 0;
	uint64_t sli_intr, cnt;

	phba = FUNC1(phba, t, eratt_poll);

	/* Here we will also keep track of interrupts per sec of the hba */
	sli_intr = phba->sli.slistat.sli_intr;

	if (phba->sli.slistat.sli_prev_intr > sli_intr)
		cnt = (((uint64_t)(-1) - phba->sli.slistat.sli_prev_intr) +
			sli_intr);
	else
		cnt = (sli_intr - phba->sli.slistat.sli_prev_intr);

	/* 64-bit integer division not supported on 32-bit x86 - use do_div */
	FUNC0(cnt, phba->eratt_poll_interval);
	phba->sli.slistat.sli_ips = cnt;

	phba->sli.slistat.sli_prev_intr = sli_intr;

	/* Check chip HA register for error event */
	eratt = FUNC2(phba);

	if (eratt)
		/* Tell the worker thread there is work to do */
		FUNC3(phba);
	else
		/* Restart the timer for next eratt poll */
		FUNC4(&phba->eratt_poll,
			  jiffies +
			  FUNC5(1000 * phba->eratt_poll_interval));
	return;
}