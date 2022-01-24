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
struct btrfs_trans_handle {int dummy; } ;
struct btrfs_root {int dummy; } ;
struct btrfs_path {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTRFS_FREE_INO_OBJECTID ; 
 int FUNC0 (struct btrfs_root*,struct btrfs_trans_handle*,struct btrfs_path*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC1(struct btrfs_root *root,
			  struct btrfs_trans_handle *trans,
			  struct btrfs_path *path)
{
	return FUNC0(root, trans, path,
					 BTRFS_FREE_INO_OBJECTID, 0);
}