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
struct dfs_cache_tgt {int /*<<< orphan*/  t_list; int /*<<< orphan*/  t_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct dfs_cache_tgt* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct dfs_cache_tgt*) ; 
 struct dfs_cache_tgt* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char const*) ; 

__attribute__((used)) static inline struct dfs_cache_tgt *FUNC6(const char *name)
{
	struct dfs_cache_tgt *t;

	t = FUNC3(sizeof(*t), GFP_KERNEL);
	if (!t)
		return FUNC0(-ENOMEM);
	t->t_name = FUNC4(name, FUNC5(name), GFP_KERNEL);
	if (!t->t_name) {
		FUNC2(t);
		return FUNC0(-ENOMEM);
	}
	FUNC1(&t->t_list);
	return t;
}