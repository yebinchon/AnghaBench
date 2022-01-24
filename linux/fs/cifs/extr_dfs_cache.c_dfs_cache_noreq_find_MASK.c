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
struct dfs_cache_tgt_list {int dummy; } ;
struct dfs_cache_entry {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (struct dfs_cache_entry*) ; 
 int FUNC1 (struct dfs_cache_entry*) ; 
 int /*<<< orphan*/  dfs_cache_list_lock ; 
 struct dfs_cache_entry* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char const*,char*) ; 
 int FUNC4 (char const*,char**) ; 
 int FUNC5 (struct dfs_cache_entry*,struct dfs_cache_tgt_list*) ; 
 int /*<<< orphan*/  FUNC6 (struct dfs_cache_entry*) ; 
 int /*<<< orphan*/  FUNC7 (char const*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (char const*,struct dfs_cache_entry*,struct dfs_info3_param*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int) ; 

int FUNC12(const char *path, struct dfs_info3_param *ref,
			 struct dfs_cache_tgt_list *tgt_list)
{
	int rc;
	char *npath;
	struct dfs_cache_entry *ce;

	if (FUNC11(!FUNC7(path)))
		return -EINVAL;

	rc = FUNC4(path, &npath);
	if (rc)
		return rc;

	FUNC8(&dfs_cache_list_lock);
	ce = FUNC2(0, NULL, NULL, 0, npath, true);
	if (FUNC0(ce)) {
		rc = FUNC1(ce);
		goto out;
	}

	if (ref)
		rc = FUNC10(path, ce, ref, FUNC6(ce));
	else
		rc = 0;
	if (!rc && tgt_list)
		rc = FUNC5(ce, tgt_list);
out:
	FUNC9(&dfs_cache_list_lock);
	FUNC3(path, npath);
	return rc;
}