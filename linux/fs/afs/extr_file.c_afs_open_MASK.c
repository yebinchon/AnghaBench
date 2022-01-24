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
struct key {int dummy; } ;
struct inode {int dummy; } ;
struct file {int f_mode; int f_flags; struct afs_file* private_data; } ;
struct TYPE_3__ {int /*<<< orphan*/  vnode; int /*<<< orphan*/  vid; } ;
struct afs_vnode {int /*<<< orphan*/  flags; TYPE_2__* volume; TYPE_1__ fid; } ;
struct afs_file {struct key* key; } ;
struct TYPE_4__ {int /*<<< orphan*/  cell; } ;

/* Variables and functions */
 struct afs_vnode* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  AFS_VNODE_NEW_CONTENT ; 
 int ENOMEM ; 
 int FMODE_WRITE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (struct key*) ; 
 int O_TRUNC ; 
 int FUNC2 (struct key*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int FUNC5 (struct afs_vnode*,struct afs_file*) ; 
 struct key* FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (struct afs_vnode*,struct key*) ; 
 int /*<<< orphan*/  FUNC8 (struct key*) ; 
 int /*<<< orphan*/  FUNC9 (struct afs_file*) ; 
 struct afs_file* FUNC10 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC12(struct inode *inode, struct file *file)
{
	struct afs_vnode *vnode = FUNC0(inode);
	struct afs_file *af;
	struct key *key;
	int ret;

	FUNC3("{%llx:%llu},", vnode->fid.vid, vnode->fid.vnode);

	key = FUNC6(vnode->volume->cell);
	if (FUNC1(key)) {
		ret = FUNC2(key);
		goto error;
	}

	af = FUNC10(sizeof(*af), GFP_KERNEL);
	if (!af) {
		ret = -ENOMEM;
		goto error_key;
	}
	af->key = key;

	ret = FUNC7(vnode, key);
	if (ret < 0)
		goto error_af;

	if (file->f_mode & FMODE_WRITE) {
		ret = FUNC5(vnode, af);
		if (ret < 0)
			goto error_af;
	}

	if (file->f_flags & O_TRUNC)
		FUNC11(AFS_VNODE_NEW_CONTENT, &vnode->flags);
	
	file->private_data = af;
	FUNC4(" = 0");
	return 0;

error_af:
	FUNC9(af);
error_key:
	FUNC8(key);
error:
	FUNC4(" = %d", ret);
	return ret;
}