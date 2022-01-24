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
typedef  int /*<<< orphan*/  u64 ;
struct extent_buffer {int dummy; } ;
struct btrfs_fs_info {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct extent_buffer*) ; 
 int /*<<< orphan*/  WAIT_NONE ; 
 struct extent_buffer* FUNC1 (struct btrfs_fs_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC3 (struct extent_buffer*) ; 
 int FUNC4 (struct extent_buffer*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC5(struct btrfs_fs_info *fs_info, u64 bytenr)
{
	struct extent_buffer *buf = NULL;
	int ret;

	buf = FUNC1(fs_info, bytenr);
	if (FUNC0(buf))
		return;

	ret = FUNC4(buf, WAIT_NONE, 0);
	if (ret < 0)
		FUNC3(buf);
	else
		FUNC2(buf);
}