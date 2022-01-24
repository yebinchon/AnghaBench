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
typedef  int /*<<< orphan*/  u32 ;
struct super_block {int dummy; } ;
struct qstr {unsigned char* name; int /*<<< orphan*/  len; } ;
struct object_info {int /*<<< orphan*/  name_len; int /*<<< orphan*/  name; int /*<<< orphan*/  parent_id; } ;
struct inode {int /*<<< orphan*/  i_ino; int /*<<< orphan*/  i_size; struct super_block* i_sb; } ;
struct adfs_dir_ops {int (* read ) (struct super_block*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct adfs_dir*) ;int (* setpos ) (struct adfs_dir*,int /*<<< orphan*/ ) ;scalar_t__ (* getnext ) (struct adfs_dir*,struct object_info*) ;int /*<<< orphan*/  (* free ) (struct adfs_dir*) ;} ;
struct adfs_dir {scalar_t__ parent_id; } ;
struct TYPE_4__ {scalar_t__ parent_id; } ;
struct TYPE_3__ {struct adfs_dir_ops* s_dir; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (struct inode*) ; 
 TYPE_1__* FUNC1 (struct super_block*) ; 
 int EIO ; 
 int ENOENT ; 
 int /*<<< orphan*/  FUNC2 (unsigned char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  adfs_dir_lock ; 
 int /*<<< orphan*/  FUNC3 (struct super_block*,char*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (struct super_block*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct adfs_dir*) ; 
 int FUNC7 (struct adfs_dir*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct adfs_dir*,struct object_info*) ; 
 int /*<<< orphan*/  FUNC9 (struct adfs_dir*) ; 

__attribute__((used)) static int FUNC10(struct inode *inode, const struct qstr *qstr,
				  struct object_info *obj)
{
	struct super_block *sb = inode->i_sb;
	const struct adfs_dir_ops *ops = FUNC1(sb)->s_dir;
	const unsigned char *name;
	struct adfs_dir dir;
	u32 name_len;
	int ret;

	ret = ops->read(sb, inode->i_ino, inode->i_size, &dir);
	if (ret)
		goto out;

	if (FUNC0(inode)->parent_id != dir.parent_id) {
		FUNC3(sb,
			   "parent directory changed under me! (%06x but got %06x)\n",
			   FUNC0(inode)->parent_id, dir.parent_id);
		ret = -EIO;
		goto free_out;
	}

	obj->parent_id = inode->i_ino;

	FUNC4(&adfs_dir_lock);

	ret = ops->setpos(&dir, 0);
	if (ret)
		goto unlock_out;

	ret = -ENOENT;
	name = qstr->name;
	name_len = qstr->len;
	while (ops->getnext(&dir, obj) == 0) {
		if (!FUNC2(name, name_len, obj->name, obj->name_len)) {
			ret = 0;
			break;
		}
	}

unlock_out:
	FUNC5(&adfs_dir_lock);

free_out:
	ops->free(&dir);
out:
	return ret;
}