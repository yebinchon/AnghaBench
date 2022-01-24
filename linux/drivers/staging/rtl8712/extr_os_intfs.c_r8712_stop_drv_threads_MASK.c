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
struct completion {int dummy; } ;
struct TYPE_2__ {int cmd_seq; int /*<<< orphan*/  cmd_queue_comp; struct completion terminate_cmdthread_comp; } ;
struct _adapter {TYPE_1__ cmdpriv; scalar_t__ cmd_thread; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct completion*) ; 

void FUNC2(struct _adapter *padapter)
{
	struct completion *completion =
		&padapter->cmdpriv.terminate_cmdthread_comp;

	/*Below is to terminate r8712_cmd_thread & event_thread...*/
	FUNC0(&padapter->cmdpriv.cmd_queue_comp);
	if (padapter->cmd_thread)
		FUNC1(completion);
	padapter->cmdpriv.cmd_seq = 1;
}