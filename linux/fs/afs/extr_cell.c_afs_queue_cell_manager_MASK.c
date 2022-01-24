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
struct afs_net {int /*<<< orphan*/  cells_manager; int /*<<< orphan*/  cells_outstanding; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct afs_net*) ; 
 int /*<<< orphan*/  afs_wq ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct afs_net *net)
{
	int outstanding = FUNC2(&net->cells_outstanding);

	FUNC0("%d", outstanding);

	if (!FUNC3(afs_wq, &net->cells_manager))
		FUNC1(net);
}