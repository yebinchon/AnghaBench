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
struct tape_34xx_block_id {int dummy; } ;
struct tape_34xx_sbid {int /*<<< orphan*/  list; struct tape_34xx_block_id bid; } ;
struct list_head {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 struct tape_34xx_sbid* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct list_head*) ; 

__attribute__((used)) static inline void
FUNC2(struct tape_34xx_block_id bid, struct list_head *l)
{
	struct tape_34xx_sbid *	new_sbid;

	new_sbid = FUNC0(sizeof(*new_sbid), GFP_ATOMIC);
	if (!new_sbid)
		return;

	new_sbid->bid = bid;
	FUNC1(&new_sbid->list, l);
}