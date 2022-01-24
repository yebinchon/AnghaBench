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
struct timer_list {int dummy; } ;
struct AdapterCtlBlk {int /*<<< orphan*/  scsi_host; } ;

/* Variables and functions */
 int /*<<< orphan*/  DBG_1 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned long) ; 
 struct AdapterCtlBlk* acb ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,struct AdapterCtlBlk*) ; 
 struct AdapterCtlBlk* FUNC3 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct AdapterCtlBlk*) ; 
 int /*<<< orphan*/  waiting_timer ; 

__attribute__((used)) static void FUNC5(struct timer_list *t)
{
	unsigned long flags;
	struct AdapterCtlBlk *acb = FUNC3(acb, t, waiting_timer);
	FUNC2(DBG_1,
		"waiting_timeout: Queue woken up by timer. acb=%p\n", acb);
	FUNC0(acb->scsi_host, flags);
	FUNC4(acb);
	FUNC1(acb->scsi_host, flags);
}