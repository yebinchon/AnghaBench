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
struct afs_volume {int /*<<< orphan*/ * cache; int /*<<< orphan*/  flags; TYPE_1__* cell; int /*<<< orphan*/  proc_link; int /*<<< orphan*/  name; } ;
struct TYPE_2__ {int /*<<< orphan*/  proc_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  AFS_VOLUME_DELETED ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void FUNC7(struct afs_volume *volume)
{
	FUNC0("%s", volume->name);

	FUNC5(&volume->cell->proc_lock);
	FUNC3(&volume->proc_link);
	FUNC6(&volume->cell->proc_lock);

#ifdef CONFIG_AFS_FSCACHE
	fscache_relinquish_cookie(volume->cache, NULL,
				  test_bit(AFS_VOLUME_DELETED, &volume->flags));
	volume->cache = NULL;
#endif

	FUNC1("");
}