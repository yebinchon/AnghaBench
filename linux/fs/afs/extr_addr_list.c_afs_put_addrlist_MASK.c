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
struct afs_addr_list {int /*<<< orphan*/  rcu; int /*<<< orphan*/  usage; } ;
typedef  int /*<<< orphan*/  rcu_callback_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ kfree ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2(struct afs_addr_list *alist)
{
	if (alist && FUNC1(&alist->usage))
		FUNC0(&alist->rcu, (rcu_callback_t)kfree);
}