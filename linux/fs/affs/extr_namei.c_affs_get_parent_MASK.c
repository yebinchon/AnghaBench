#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct inode {int dummy; } ;
struct dentry {int /*<<< orphan*/  d_sb; } ;
struct buffer_head {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  parent; } ;
struct TYPE_3__ {int /*<<< orphan*/  i_ino; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (int /*<<< orphan*/ ,struct buffer_head*) ; 
 int /*<<< orphan*/  EIO ; 
 struct dentry* FUNC1 (struct inode*) ; 
 struct dentry* FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct inode*) ; 
 struct buffer_head* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct inode* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct buffer_head*) ; 
 TYPE_1__* FUNC8 (struct dentry*) ; 
 struct dentry* FUNC9 (struct inode*) ; 

__attribute__((used)) static struct dentry *FUNC10(struct dentry *child)
{
	struct inode *parent;
	struct buffer_head *bh;

	bh = FUNC4(child->d_sb, FUNC8(child)->i_ino);
	if (!bh)
		return FUNC2(-EIO);

	parent = FUNC5(child->d_sb,
			   FUNC6(FUNC0(child->d_sb, bh)->parent));
	FUNC7(bh);
	if (FUNC3(parent))
		return FUNC1(parent);

	return FUNC9(parent);
}