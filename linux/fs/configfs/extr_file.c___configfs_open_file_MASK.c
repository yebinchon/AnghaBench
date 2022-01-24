#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct inode {int i_mode; } ;
struct TYPE_6__ {struct dentry* dentry; } ;
struct file {int f_mode; struct configfs_buffer* private_data; TYPE_1__ f_path; } ;
struct dentry {int /*<<< orphan*/  d_parent; } ;
struct configfs_fragment {int /*<<< orphan*/  frag_sem; int /*<<< orphan*/  frag_dead; } ;
struct configfs_buffer {int needs_read_fill; int read_in_progress; int write_in_progress; TYPE_3__* item; int /*<<< orphan*/  owner; int /*<<< orphan*/  mutex; TYPE_4__* bin_attr; int /*<<< orphan*/  ops; struct configfs_attribute* attr; int /*<<< orphan*/  cb_max_size; } ;
struct configfs_attribute {int /*<<< orphan*/  show; int /*<<< orphan*/  store; int /*<<< orphan*/  ca_owner; } ;
struct TYPE_9__ {int /*<<< orphan*/  read; int /*<<< orphan*/  write; int /*<<< orphan*/  cb_max_size; } ;
struct TYPE_8__ {TYPE_2__* ci_type; } ;
struct TYPE_7__ {int /*<<< orphan*/  ct_item_ops; } ;

/* Variables and functions */
 int CONFIGFS_ITEM_ATTR ; 
 int CONFIGFS_ITEM_BIN_ATTR ; 
 int EACCES ; 
 int EINVAL ; 
 int ENODEV ; 
 int ENOENT ; 
 int ENOMEM ; 
 int FMODE_READ ; 
 int FMODE_WRITE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int S_IRUGO ; 
 int S_IWUGO ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct configfs_buffer*) ; 
 struct configfs_buffer* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct configfs_attribute* FUNC6 (struct dentry*) ; 
 TYPE_4__* FUNC7 (struct dentry*) ; 
 struct configfs_fragment* FUNC8 (struct file*) ; 
 TYPE_3__* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC13(struct inode *inode, struct file *file, int type)
{
	struct dentry *dentry = file->f_path.dentry;
	struct configfs_fragment *frag = FUNC8(file);
	struct configfs_attribute *attr;
	struct configfs_buffer *buffer;
	int error;

	error = -ENOMEM;
	buffer = FUNC3(sizeof(struct configfs_buffer), GFP_KERNEL);
	if (!buffer)
		goto out;

	error = -ENOENT;
	FUNC1(&frag->frag_sem);
	if (FUNC11(frag->frag_dead))
		goto out_free_buffer;

	error = -EINVAL;
	buffer->item = FUNC9(dentry->d_parent);
	if (!buffer->item)
		goto out_free_buffer;

	attr = FUNC6(dentry);
	if (!attr)
		goto out_put_item;

	if (type & CONFIGFS_ITEM_BIN_ATTR) {
		buffer->bin_attr = FUNC7(dentry);
		buffer->cb_max_size = buffer->bin_attr->cb_max_size;
	} else {
		buffer->attr = attr;
	}

	buffer->owner = attr->ca_owner;
	/* Grab the module reference for this attribute if we have one */
	error = -ENODEV;
	if (!FUNC10(buffer->owner))
		goto out_put_item;

	error = -EACCES;
	if (!buffer->item->ci_type)
		goto out_put_module;

	buffer->ops = buffer->item->ci_type->ct_item_ops;

	/* File needs write support.
	 * The inode's perms must say it's ok,
	 * and we must have a store method.
	 */
	if (file->f_mode & FMODE_WRITE) {
		if (!(inode->i_mode & S_IWUGO))
			goto out_put_module;
		if ((type & CONFIGFS_ITEM_ATTR) && !attr->store)
			goto out_put_module;
		if ((type & CONFIGFS_ITEM_BIN_ATTR) && !buffer->bin_attr->write)
			goto out_put_module;
	}

	/* File needs read support.
	 * The inode's perms must say it's ok, and we there
	 * must be a show method for it.
	 */
	if (file->f_mode & FMODE_READ) {
		if (!(inode->i_mode & S_IRUGO))
			goto out_put_module;
		if ((type & CONFIGFS_ITEM_ATTR) && !attr->show)
			goto out_put_module;
		if ((type & CONFIGFS_ITEM_BIN_ATTR) && !buffer->bin_attr->read)
			goto out_put_module;
	}

	FUNC5(&buffer->mutex);
	buffer->needs_read_fill = 1;
	buffer->read_in_progress = false;
	buffer->write_in_progress = false;
	file->private_data = buffer;
	FUNC12(&frag->frag_sem);
	return 0;

out_put_module:
	FUNC4(buffer->owner);
out_put_item:
	FUNC0(buffer->item);
out_free_buffer:
	FUNC12(&frag->frag_sem);
	FUNC2(buffer);
out:
	return error;
}