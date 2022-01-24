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
struct ctlr_info {int dummy; } ;
struct CommandList {TYPE_1__* err_info; } ;
struct TYPE_2__ {int /*<<< orphan*/  CommandStatus; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_CTLR_LOCKUP ; 
 int IO_OK ; 
 int FUNC0 (struct ctlr_info*,struct CommandList*,int,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (struct ctlr_info*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct ctlr_info *h, struct CommandList *c,
				   int reply_queue, unsigned long timeout_msecs)
{
	if (FUNC2(FUNC1(h))) {
		c->err_info->CommandStatus = CMD_CTLR_LOCKUP;
		return IO_OK;
	}
	return FUNC0(h, c, reply_queue, timeout_msecs);
}