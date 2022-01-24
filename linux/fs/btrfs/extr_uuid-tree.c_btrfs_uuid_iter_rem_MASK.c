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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u64 ;
struct btrfs_trans_handle {int dummy; } ;
struct btrfs_root {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct btrfs_trans_handle*) ; 
 int FUNC1 (struct btrfs_trans_handle*) ; 
 int /*<<< orphan*/  FUNC2 (struct btrfs_trans_handle*) ; 
 struct btrfs_trans_handle* FUNC3 (struct btrfs_root*,int) ; 
 int FUNC4 (struct btrfs_trans_handle*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct btrfs_root *uuid_root, u8 *uuid, u8 type,
			       u64 subid)
{
	struct btrfs_trans_handle *trans;
	int ret;

	/* 1 - for the uuid item */
	trans = FUNC3(uuid_root, 1);
	if (FUNC0(trans)) {
		ret = FUNC1(trans);
		goto out;
	}

	ret = FUNC4(trans, uuid, type, subid);
	FUNC2(trans);

out:
	return ret;
}