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
struct dentry {int dummy; } ;
struct cachefiles_object {int /*<<< orphan*/  flags; int /*<<< orphan*/  active_node; struct dentry* dentry; } ;
struct cachefiles_cache {int /*<<< orphan*/  f_released; int /*<<< orphan*/  b_released; int /*<<< orphan*/  active_lock; int /*<<< orphan*/  active_nodes; } ;
typedef  int /*<<< orphan*/  blkcnt_t ;

/* Variables and functions */
 int /*<<< orphan*/  CACHEFILES_OBJECT_ACTIVE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct cachefiles_cache*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct inode* FUNC4 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct cachefiles_object*,struct dentry*,struct inode*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

void FUNC10(struct cachefiles_cache *cache,
				     struct cachefiles_object *object,
				     blkcnt_t i_blocks)
{
	struct dentry *dentry = object->dentry;
	struct inode *inode = FUNC4(dentry);

	FUNC6(object, dentry, inode);

	FUNC8(&cache->active_lock);
	FUNC5(&object->active_node, &cache->active_nodes);
	FUNC3(CACHEFILES_OBJECT_ACTIVE, &object->flags);
	FUNC9(&cache->active_lock);

	FUNC7(&object->flags, CACHEFILES_OBJECT_ACTIVE);

	/* This object can now be culled, so we need to let the daemon know
	 * that there is something it can remove if it needs to.
	 */
	FUNC1(i_blocks, &cache->b_released);
	if (FUNC0(&cache->f_released))
		FUNC2(cache);
}