#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct inode {int /*<<< orphan*/  i_ino; } ;
struct btrfs_iget_args {int /*<<< orphan*/  root; int /*<<< orphan*/ * location; } ;
struct TYPE_2__ {int /*<<< orphan*/  root; int /*<<< orphan*/  location; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  btrfs_find_actor ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct btrfs_iget_args*) ; 

__attribute__((used)) static int FUNC3(struct inode *inode)
{
	struct btrfs_iget_args args;
	args.location = &FUNC0(inode)->location;
	args.root = FUNC0(inode)->root;

	return FUNC2(inode,
		   FUNC1(inode->i_ino, FUNC0(inode)->root),
		   btrfs_find_actor, &args);
}