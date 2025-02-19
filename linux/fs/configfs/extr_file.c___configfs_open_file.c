
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct inode {int i_mode; } ;
struct TYPE_6__ {struct dentry* dentry; } ;
struct file {int f_mode; struct configfs_buffer* private_data; TYPE_1__ f_path; } ;
struct dentry {int d_parent; } ;
struct configfs_fragment {int frag_sem; int frag_dead; } ;
struct configfs_buffer {int needs_read_fill; int read_in_progress; int write_in_progress; TYPE_3__* item; int owner; int mutex; TYPE_4__* bin_attr; int ops; struct configfs_attribute* attr; int cb_max_size; } ;
struct configfs_attribute {int show; int store; int ca_owner; } ;
struct TYPE_9__ {int read; int write; int cb_max_size; } ;
struct TYPE_8__ {TYPE_2__* ci_type; } ;
struct TYPE_7__ {int ct_item_ops; } ;


 int CONFIGFS_ITEM_ATTR ;
 int CONFIGFS_ITEM_BIN_ATTR ;
 int EACCES ;
 int EINVAL ;
 int ENODEV ;
 int ENOENT ;
 int ENOMEM ;
 int FMODE_READ ;
 int FMODE_WRITE ;
 int GFP_KERNEL ;
 int S_IRUGO ;
 int S_IWUGO ;
 int config_item_put (TYPE_3__*) ;
 int down_read (int *) ;
 int kfree (struct configfs_buffer*) ;
 struct configfs_buffer* kzalloc (int,int ) ;
 int module_put (int ) ;
 int mutex_init (int *) ;
 struct configfs_attribute* to_attr (struct dentry*) ;
 TYPE_4__* to_bin_attr (struct dentry*) ;
 struct configfs_fragment* to_frag (struct file*) ;
 TYPE_3__* to_item (int ) ;
 int try_module_get (int ) ;
 scalar_t__ unlikely (int ) ;
 int up_read (int *) ;

__attribute__((used)) static int __configfs_open_file(struct inode *inode, struct file *file, int type)
{
 struct dentry *dentry = file->f_path.dentry;
 struct configfs_fragment *frag = to_frag(file);
 struct configfs_attribute *attr;
 struct configfs_buffer *buffer;
 int error;

 error = -ENOMEM;
 buffer = kzalloc(sizeof(struct configfs_buffer), GFP_KERNEL);
 if (!buffer)
  goto out;

 error = -ENOENT;
 down_read(&frag->frag_sem);
 if (unlikely(frag->frag_dead))
  goto out_free_buffer;

 error = -EINVAL;
 buffer->item = to_item(dentry->d_parent);
 if (!buffer->item)
  goto out_free_buffer;

 attr = to_attr(dentry);
 if (!attr)
  goto out_put_item;

 if (type & CONFIGFS_ITEM_BIN_ATTR) {
  buffer->bin_attr = to_bin_attr(dentry);
  buffer->cb_max_size = buffer->bin_attr->cb_max_size;
 } else {
  buffer->attr = attr;
 }

 buffer->owner = attr->ca_owner;

 error = -ENODEV;
 if (!try_module_get(buffer->owner))
  goto out_put_item;

 error = -EACCES;
 if (!buffer->item->ci_type)
  goto out_put_module;

 buffer->ops = buffer->item->ci_type->ct_item_ops;





 if (file->f_mode & FMODE_WRITE) {
  if (!(inode->i_mode & S_IWUGO))
   goto out_put_module;
  if ((type & CONFIGFS_ITEM_ATTR) && !attr->store)
   goto out_put_module;
  if ((type & CONFIGFS_ITEM_BIN_ATTR) && !buffer->bin_attr->write)
   goto out_put_module;
 }





 if (file->f_mode & FMODE_READ) {
  if (!(inode->i_mode & S_IRUGO))
   goto out_put_module;
  if ((type & CONFIGFS_ITEM_ATTR) && !attr->show)
   goto out_put_module;
  if ((type & CONFIGFS_ITEM_BIN_ATTR) && !buffer->bin_attr->read)
   goto out_put_module;
 }

 mutex_init(&buffer->mutex);
 buffer->needs_read_fill = 1;
 buffer->read_in_progress = 0;
 buffer->write_in_progress = 0;
 file->private_data = buffer;
 up_read(&frag->frag_sem);
 return 0;

out_put_module:
 module_put(buffer->owner);
out_put_item:
 config_item_put(buffer->item);
out_free_buffer:
 up_read(&frag->frag_sem);
 kfree(buffer);
out:
 return error;
}
