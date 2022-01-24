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
struct btrfs_workqueue {void* normal; void* high; } ;
struct btrfs_fs_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 unsigned int WQ_HIGHPRI ; 
 void* FUNC0 (struct btrfs_fs_info*,char const*,unsigned int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (struct btrfs_workqueue*) ; 
 struct btrfs_workqueue* FUNC3 (int,int /*<<< orphan*/ ) ; 

struct btrfs_workqueue *FUNC4(struct btrfs_fs_info *fs_info,
					      const char *name,
					      unsigned int flags,
					      int limit_active,
					      int thresh)
{
	struct btrfs_workqueue *ret = FUNC3(sizeof(*ret), GFP_KERNEL);

	if (!ret)
		return NULL;

	ret->normal = FUNC0(fs_info, name,
					      flags & ~WQ_HIGHPRI,
					      limit_active, thresh);
	if (!ret->normal) {
		FUNC2(ret);
		return NULL;
	}

	if (flags & WQ_HIGHPRI) {
		ret->high = FUNC0(fs_info, name, flags,
						    limit_active, thresh);
		if (!ret->high) {
			FUNC1(ret->normal);
			FUNC2(ret);
			return NULL;
		}
	}
	return ret;
}