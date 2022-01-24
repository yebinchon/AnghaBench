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
struct dentry {int dummy; } ;
struct cachefiles_cache {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct dentry*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct dentry*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct cachefiles_cache *cache,
				      struct dentry *root)
{
	int ret;

	ret = FUNC3(FUNC0(root), root, 0);
	if (ret < 0) {
		FUNC1("Security denies permission to make dirs: error %d",
		       ret);
		return ret;
	}

	ret = FUNC2(FUNC0(root), root, 0);
	if (ret < 0)
		FUNC1("Security denies permission to create files: error %d",
		       ret);

	return ret;
}