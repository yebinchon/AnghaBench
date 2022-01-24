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
 scalar_t__ FUNC0 (struct dentry*) ; 
 int FUNC1 (struct dentry*) ; 
 struct dentry* FUNC2 (struct cachefiles_cache*,struct dentry*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC4 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

int FUNC6(struct cachefiles_cache *cache, struct dentry *dir,
			    char *filename)
{
	struct dentry *victim;

	//_enter(",%pd/,%s",
	//       dir, filename);

	victim = FUNC2(cache, dir, filename);
	if (FUNC0(victim))
		return FUNC1(victim);

	FUNC5(FUNC3(dir));
	FUNC4(victim);
	//_leave(" = 0");
	return 0;
}