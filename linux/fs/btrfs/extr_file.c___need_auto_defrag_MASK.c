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
struct btrfs_fs_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AUTO_DEFRAG ; 
 scalar_t__ FUNC0 (struct btrfs_fs_info*) ; 
 int /*<<< orphan*/  FUNC1 (struct btrfs_fs_info*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC2(struct btrfs_fs_info *fs_info)
{
	if (!FUNC1(fs_info, AUTO_DEFRAG))
		return 0;

	if (FUNC0(fs_info))
		return 0;

	return 1;
}