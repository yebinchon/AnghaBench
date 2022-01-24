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
struct hpsa_scsi_dev_t {int /*<<< orphan*/  scsi3addr; } ;
struct ctlr_info {int nr_cmds; int /*<<< orphan*/  lock; struct CommandList* cmd_pool; } ;
struct CommandList {int /*<<< orphan*/  refcount; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ctlr_info*,struct CommandList*) ; 
 scalar_t__ FUNC2 (struct ctlr_info*,struct CommandList*,struct hpsa_scsi_dev_t*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct CommandList*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC6(struct ctlr_info *h,
						struct hpsa_scsi_dev_t *dev)
{
	int i;
	int count = 0;

	for (i = 0; i < h->nr_cmds; i++) {
		struct CommandList *c = h->cmd_pool + i;
		int refcount = FUNC0(&c->refcount);

		if (refcount > 1 && FUNC2(h, c, dev,
				dev->scsi3addr)) {
			unsigned long flags;

			FUNC4(&h->lock, flags);	/* Implied MB */
			if (!FUNC3(c))
				++count;
			FUNC5(&h->lock, flags);
		}

		FUNC1(h, c);
	}

	return count;
}