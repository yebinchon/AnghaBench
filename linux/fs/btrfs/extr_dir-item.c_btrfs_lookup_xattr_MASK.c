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
typedef  int /*<<< orphan*/  u16 ;
struct btrfs_trans_handle {int dummy; } ;
struct btrfs_root {int /*<<< orphan*/  fs_info; } ;
struct btrfs_path {int dummy; } ;
struct btrfs_key {int /*<<< orphan*/  offset; int /*<<< orphan*/  type; int /*<<< orphan*/  objectid; } ;
struct btrfs_dir_item {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTRFS_XATTR_ITEM_KEY ; 
 struct btrfs_dir_item* FUNC0 (int) ; 
 struct btrfs_dir_item* FUNC1 (int /*<<< orphan*/ ,struct btrfs_path*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char const*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct btrfs_trans_handle*,struct btrfs_root*,struct btrfs_key*,struct btrfs_path*,int,int) ; 

struct btrfs_dir_item *FUNC4(struct btrfs_trans_handle *trans,
					  struct btrfs_root *root,
					  struct btrfs_path *path, u64 dir,
					  const char *name, u16 name_len,
					  int mod)
{
	int ret;
	struct btrfs_key key;
	int ins_len = mod < 0 ? -1 : 0;
	int cow = mod != 0;

	key.objectid = dir;
	key.type = BTRFS_XATTR_ITEM_KEY;
	key.offset = FUNC2(name, name_len);
	ret = FUNC3(trans, root, &key, path, ins_len, cow);
	if (ret < 0)
		return FUNC0(ret);
	if (ret > 0)
		return NULL;

	return FUNC1(root->fs_info, path, name, name_len);
}