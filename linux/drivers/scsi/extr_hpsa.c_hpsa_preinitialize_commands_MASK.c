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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ctlr_info*,int,struct CommandList*) ; 

__attribute__((used)) static void FUNC2(struct ctlr_info *h)
{
	int i;

	for (i = 0; i < h->nr_cmds; i++) {
		struct CommandList *c = h->cmd_pool + i;

		FUNC1(h, i, c);
		FUNC0(&c->refcount, 0);
	}
}