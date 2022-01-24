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
struct backref_cache {int /*<<< orphan*/  leaves; int /*<<< orphan*/  detached; int /*<<< orphan*/  changed; int /*<<< orphan*/ * pending; int /*<<< orphan*/  rb_root; } ;

/* Variables and functions */
 int BTRFS_MAX_LEVEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  RB_ROOT ; 

__attribute__((used)) static void FUNC1(struct backref_cache *cache)
{
	int i;
	cache->rb_root = RB_ROOT;
	for (i = 0; i < BTRFS_MAX_LEVEL; i++)
		FUNC0(&cache->pending[i]);
	FUNC0(&cache->changed);
	FUNC0(&cache->detached);
	FUNC0(&cache->leaves);
}