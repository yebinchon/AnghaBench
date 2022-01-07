
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {struct fb_info* private_data; } ;
struct fb_info {int deferred_work; int fbdefio; } ;
typedef int loff_t ;


 int cancel_delayed_work_sync (int *) ;
 struct inode* file_inode (struct file*) ;
 int file_write_and_wait_range (struct file*,int ,int ) ;
 int inode_lock (struct inode*) ;
 int inode_unlock (struct inode*) ;
 int schedule_delayed_work (int *,int ) ;

int fb_deferred_io_fsync(struct file *file, loff_t start, loff_t end, int datasync)
{
 struct fb_info *info = file->private_data;
 struct inode *inode = file_inode(file);
 int err = file_write_and_wait_range(file, start, end);
 if (err)
  return err;


 if (!info->fbdefio)
  return 0;

 inode_lock(inode);

 cancel_delayed_work_sync(&info->deferred_work);


 schedule_delayed_work(&info->deferred_work, 0);
 inode_unlock(inode);

 return 0;
}
