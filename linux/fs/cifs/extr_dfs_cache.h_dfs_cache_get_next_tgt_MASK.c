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
struct dfs_cache_tgt_list {int /*<<< orphan*/  tl_list; } ;
struct dfs_cache_tgt_iterator {int /*<<< orphan*/  it_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  it_list ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct dfs_cache_tgt_iterator* FUNC2 (struct dfs_cache_tgt_iterator*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline struct dfs_cache_tgt_iterator *
FUNC3(struct dfs_cache_tgt_list *tl,
		       struct dfs_cache_tgt_iterator *it)
{
	if (!tl || FUNC0(&tl->tl_list) || !it ||
	    FUNC1(&it->it_list, &tl->tl_list))
		return NULL;
	return FUNC2(it, it_list);
}