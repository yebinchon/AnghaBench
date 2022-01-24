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
struct btrfs_block_rsv {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct btrfs_block_rsv*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct btrfs_block_rsv*,int /*<<< orphan*/ ) ; 

int FUNC2(struct btrfs_block_rsv *src,
			    struct btrfs_block_rsv *dst, u64 num_bytes,
			    bool update_size)
{
	int ret;

	ret = FUNC1(src, num_bytes);
	if (ret)
		return ret;

	FUNC0(dst, num_bytes, update_size);
	return 0;
}