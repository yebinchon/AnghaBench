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
struct ctlr_info {int nr_cmds; struct CommandList* cmd_pool; } ;
struct CommandList {int /*<<< orphan*/  refcount; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ctlr_info*,struct CommandList*) ; 
 scalar_t__ FUNC2 (struct CommandList*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static void FUNC4(struct ctlr_info *h)
{
	struct CommandList *c = NULL;
	int i, accel_cmds_out;
	int refcount;

	do { /* wait for all outstanding ioaccel commands to drain out */
		accel_cmds_out = 0;
		for (i = 0; i < h->nr_cmds; i++) {
			c = h->cmd_pool + i;
			refcount = FUNC0(&c->refcount);
			if (refcount > 1) /* Command is allocated */
				accel_cmds_out += FUNC2(c);
			FUNC1(h, c);
		}
		if (accel_cmds_out <= 0)
			break;
		FUNC3(100);
	} while (1);
}