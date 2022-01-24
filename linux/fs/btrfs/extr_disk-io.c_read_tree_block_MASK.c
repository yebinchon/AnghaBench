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
struct btrfs_key {int dummy; } ;
struct btrfs_fs_info {int dummy; } ;

/* Variables and functions */
 struct extent_buffer* FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct extent_buffer*) ; 
 int FUNC2 (struct extent_buffer*,int /*<<< orphan*/ ,int,struct btrfs_key*) ; 
 struct extent_buffer* FUNC3 (struct btrfs_fs_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct extent_buffer*) ; 

struct extent_buffer *FUNC5(struct btrfs_fs_info *fs_info, u64 bytenr,
				      u64 parent_transid, int level,
				      struct btrfs_key *first_key)
{
	struct extent_buffer *buf = NULL;
	int ret;

	buf = FUNC3(fs_info, bytenr);
	if (FUNC1(buf))
		return buf;

	ret = FUNC2(buf, parent_transid,
					     level, first_key);
	if (ret) {
		FUNC4(buf);
		return FUNC0(ret);
	}
	return buf;

}