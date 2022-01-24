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
struct vscsifrnt_info {int /*<<< orphan*/  shadow_lock; int /*<<< orphan*/  shadow_free_bitmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  VSCSIIF_MAX_REQS ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC4(struct vscsifrnt_info *info)
{
	unsigned long flags;
	int free;

	FUNC2(&info->shadow_lock, flags);

	free = FUNC1(info->shadow_free_bitmap, VSCSIIF_MAX_REQS);
	FUNC0(free, info->shadow_free_bitmap);

	FUNC3(&info->shadow_lock, flags);

	return free;
}