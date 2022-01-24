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
struct dfs_info3_param {int dummy; } ;
struct dfs_cache_entry {int /*<<< orphan*/  ce_path; int /*<<< orphan*/  ce_tlist; int /*<<< orphan*/  ce_hlist; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct dfs_cache_entry* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct dfs_info3_param const*,int,struct dfs_cache_entry*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  dfs_cache_slab ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct dfs_cache_entry*) ; 
 struct dfs_cache_entry* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct dfs_cache_entry *
FUNC8(const char *path, const struct dfs_info3_param *refs,
		  int numrefs)
{
	struct dfs_cache_entry *ce;
	int rc;

	ce = FUNC6(dfs_cache_slab, GFP_KERNEL);
	if (!ce)
		return FUNC0(-ENOMEM);

	ce->ce_path = FUNC7(path, GFP_KERNEL);
	if (!ce->ce_path) {
		FUNC5(dfs_cache_slab, ce);
		return FUNC0(-ENOMEM);
	}
	FUNC1(&ce->ce_hlist);
	FUNC2(&ce->ce_tlist);

	rc = FUNC3(refs, numrefs, ce, NULL);
	if (rc) {
		FUNC4(ce->ce_path);
		FUNC5(dfs_cache_slab, ce);
		ce = FUNC0(rc);
	}
	return ce;
}