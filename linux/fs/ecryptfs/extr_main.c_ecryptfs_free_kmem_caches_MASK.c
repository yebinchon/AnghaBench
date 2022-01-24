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
struct ecryptfs_cache_info {int /*<<< orphan*/ * cache; } ;

/* Variables and functions */
 int FUNC0 (struct ecryptfs_cache_info*) ; 
 struct ecryptfs_cache_info* ecryptfs_cache_infos ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static void FUNC3(void)
{
	int i;

	/*
	 * Make sure all delayed rcu free inodes are flushed before we
	 * destroy cache.
	 */
	FUNC2();

	for (i = 0; i < FUNC0(ecryptfs_cache_infos); i++) {
		struct ecryptfs_cache_info *info;

		info = &ecryptfs_cache_infos[i];
		FUNC1(*(info->cache));
	}
}