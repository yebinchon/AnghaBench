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
struct ctlr_info {scalar_t__ cmd_pool_bits; struct CommandList* cmd_pool; } ;
struct CommandList {int /*<<< orphan*/  refcount; } ;

/* Variables and functions */
 int BITS_PER_LONG ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct ctlr_info *h, struct CommandList *c)
{
	if (FUNC0(&c->refcount)) {
		int i;

		i = c - h->cmd_pool;
		FUNC1(i & (BITS_PER_LONG - 1),
			  h->cmd_pool_bits + (i / BITS_PER_LONG));
	}
}