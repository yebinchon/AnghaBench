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
struct afs_net {int /*<<< orphan*/  proc_cells_lock; } ;
struct afs_cell {int /*<<< orphan*/ * cache; int /*<<< orphan*/  proc_link; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct afs_net*,struct afs_cell*) ; 
 int /*<<< orphan*/  FUNC3 (struct afs_cell*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct afs_net *net, struct afs_cell *cell)
{
	FUNC0("%s", cell->name);

	FUNC3(cell);

	FUNC6(&net->proc_cells_lock);
	FUNC5(&cell->proc_link);
	FUNC2(net, cell);
	FUNC7(&net->proc_cells_lock);

#ifdef CONFIG_AFS_FSCACHE
	fscache_relinquish_cookie(cell->cache, NULL, false);
	cell->cache = NULL;
#endif

	FUNC1("");
}