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
struct inode {int dummy; } ;
struct file {struct cachefiles_cache* private_data; } ;
struct cachefiles_cache {int frun_percent; int fcull_percent; int fstop_percent; int brun_percent; int bcull_percent; int bstop_percent; struct file* cachefilesd; int /*<<< orphan*/  daemon_pollwq; int /*<<< orphan*/  active_lock; int /*<<< orphan*/  active_nodes; int /*<<< orphan*/  daemon_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_SYS_ADMIN ; 
 int EBUSY ; 
 int ENOMEM ; 
 int EPERM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  RB_ROOT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ cachefiles_open ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct cachefiles_cache* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (scalar_t__*,int) ; 

__attribute__((used)) static int FUNC7(struct inode *inode, struct file *file)
{
	struct cachefiles_cache *cache;

	FUNC0("");

	/* only the superuser may do this */
	if (!FUNC1(CAP_SYS_ADMIN))
		return -EPERM;

	/* the cachefiles device may only be open once at a time */
	if (FUNC6(&cachefiles_open, 1) == 1)
		return -EBUSY;

	/* allocate a cache record */
	cache = FUNC3(sizeof(struct cachefiles_cache), GFP_KERNEL);
	if (!cache) {
		cachefiles_open = 0;
		return -ENOMEM;
	}

	FUNC4(&cache->daemon_mutex);
	cache->active_nodes = RB_ROOT;
	FUNC5(&cache->active_lock);
	FUNC2(&cache->daemon_pollwq);

	/* set default caching limits
	 * - limit at 1% free space and/or free files
	 * - cull below 5% free space and/or free files
	 * - cease culling above 7% free space and/or free files
	 */
	cache->frun_percent = 7;
	cache->fcull_percent = 5;
	cache->fstop_percent = 1;
	cache->brun_percent = 7;
	cache->bcull_percent = 5;
	cache->bstop_percent = 1;

	file->private_data = cache;
	cache->cachefilesd = file;
	return 0;
}