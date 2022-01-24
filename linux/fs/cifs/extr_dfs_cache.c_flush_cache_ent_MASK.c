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
struct dfs_cache_entry {int /*<<< orphan*/  ce_rcu; int /*<<< orphan*/  ce_path; int /*<<< orphan*/  ce_hlist; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dfs_cache_count ; 
 int /*<<< orphan*/  free_cache_entry ; 
 int /*<<< orphan*/  FUNC1 (struct dfs_cache_entry*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC5(struct dfs_cache_entry *ce)
{
	if (FUNC3(&ce->ce_hlist))
		return;

	FUNC2(&ce->ce_hlist);
	FUNC4(ce->ce_path);
	FUNC1(ce);
	dfs_cache_count--;
	FUNC0(&ce->ce_rcu, free_cache_entry);
}