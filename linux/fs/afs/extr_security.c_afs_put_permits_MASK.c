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
struct afs_permits {int /*<<< orphan*/  rcu; int /*<<< orphan*/  hash_node; int /*<<< orphan*/  usage; } ;

/* Variables and functions */
 int /*<<< orphan*/  afs_permits_lock ; 
 int /*<<< orphan*/  afs_permits_rcu ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct afs_permits *permits)
{
	if (permits && FUNC2(&permits->usage)) {
		FUNC3(&afs_permits_lock);
		FUNC1(&permits->hash_node);
		FUNC4(&afs_permits_lock);
		FUNC0(&permits->rcu, afs_permits_rcu);
	}
}