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
struct inode {int i_mode; int /*<<< orphan*/  i_dentry; } ;
struct cifs_fattr {scalar_t__ cf_uniqueid; scalar_t__ cf_createtime; int cf_mode; int /*<<< orphan*/  cf_flags; } ;
struct TYPE_2__ {scalar_t__ uniqueid; scalar_t__ createtime; } ;

/* Variables and functions */
 int /*<<< orphan*/  CIFS_FATTR_INO_COLLISION ; 
 TYPE_1__* FUNC0 (struct inode*) ; 
 int S_IFMT ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC3(struct inode *inode, void *opaque)
{
	struct cifs_fattr *fattr = (struct cifs_fattr *) opaque;

	/* don't match inode with different uniqueid */
	if (FUNC0(inode)->uniqueid != fattr->cf_uniqueid)
		return 0;

	/* use createtime like an i_generation field */
	if (FUNC0(inode)->createtime != fattr->cf_createtime)
		return 0;

	/* don't match inode of different type */
	if ((inode->i_mode & S_IFMT) != (fattr->cf_mode & S_IFMT))
		return 0;

	/* if it's not a directory or has no dentries, then flag it */
	if (FUNC1(inode->i_mode) && !FUNC2(&inode->i_dentry))
		fattr->cf_flags |= CIFS_FATTR_INO_COLLISION;

	return 1;
}