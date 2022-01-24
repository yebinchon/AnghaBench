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
struct dentry {int dummy; } ;
struct btrfs_trans_handle {int dummy; } ;
struct btrfs_log_ctx {int dummy; } ;
typedef  int /*<<< orphan*/  loff_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LOG_INODE_ALL ; 
 int FUNC1 (struct btrfs_trans_handle*,int /*<<< orphan*/ ,struct dentry*,int /*<<< orphan*/  const,int /*<<< orphan*/  const,int /*<<< orphan*/ ,struct btrfs_log_ctx*) ; 
 int /*<<< orphan*/  FUNC2 (struct dentry*) ; 
 struct dentry* FUNC3 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC4 (struct dentry*) ; 

int FUNC5(struct btrfs_trans_handle *trans,
			  struct dentry *dentry,
			  const loff_t start,
			  const loff_t end,
			  struct btrfs_log_ctx *ctx)
{
	struct dentry *parent = FUNC3(dentry);
	int ret;

	ret = FUNC1(trans, FUNC0(FUNC2(dentry)), parent,
				     start, end, LOG_INODE_ALL, ctx);
	FUNC4(parent);

	return ret;
}