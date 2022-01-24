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
struct afs_volume {TYPE_1__* cell; int /*<<< orphan*/  proc_link; int /*<<< orphan*/  vid; int /*<<< orphan*/  cache; } ;
struct TYPE_2__ {int /*<<< orphan*/  proc_lock; int /*<<< orphan*/  proc_volumes; int /*<<< orphan*/  cache; } ;

/* Variables and functions */
 int /*<<< orphan*/  afs_volume_cache_index_def ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct afs_volume*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct afs_volume *volume)
{
#ifdef CONFIG_AFS_FSCACHE
	volume->cache = fscache_acquire_cookie(volume->cell->cache,
					       &afs_volume_cache_index_def,
					       &volume->vid, sizeof(volume->vid),
					       NULL, 0,
					       volume, 0, true);
#endif

	FUNC2(&volume->cell->proc_lock);
	FUNC1(&volume->proc_link, &volume->cell->proc_volumes);
	FUNC3(&volume->cell->proc_lock);
}