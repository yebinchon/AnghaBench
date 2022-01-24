#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct dfs_info3_param {int dummy; } ;
struct dfs_cache_entry {scalar_t__ ce_numtgts; TYPE_1__* ce_tgthint; } ;
struct TYPE_2__ {char* t_name; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct dfs_cache_entry* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (struct dfs_cache_entry*) ; 
 int FUNC2 (struct dfs_info3_param const*,int,struct dfs_cache_entry*,char*) ; 
 struct dfs_cache_entry* FUNC3 (char const*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC4 (struct dfs_cache_entry*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 char* FUNC6 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

__attribute__((used)) static inline struct dfs_cache_entry *
FUNC8(const char *path, const struct dfs_info3_param *refs,
		     int numrefs)
{
	int rc;
	unsigned int h;
	struct dfs_cache_entry *ce;
	char *s, *th = NULL;

	ce = FUNC3(path, &h);
	if (FUNC1(ce))
		return ce;

	if (ce->ce_tgthint) {
		s = ce->ce_tgthint->t_name;
		th = FUNC6(s, FUNC7(s), GFP_KERNEL);
		if (!th)
			return FUNC0(-ENOMEM);
	}

	FUNC4(ce);
	ce->ce_numtgts = 0;

	rc = FUNC2(refs, numrefs, ce, th);
	FUNC5(th);

	if (rc)
		ce = FUNC0(rc);

	return ce;
}