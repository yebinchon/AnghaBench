
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int s_time_gran; int s_root; int * s_op; int s_magic; int s_blocksize_bits; int s_blocksize; } ;
struct inode {int * i_op; } ;
struct fs_context {int dummy; } ;
struct dev_data {int dentry; struct super_block* sb; } ;


 int CHIP ;
 int ENODEV ;
 int ENOMEM ;
 int ESRCH ;
 int GADGETFS_MAGIC ;
 int PAGE_SHIFT ;
 int PAGE_SIZE ;
 int S_IFDIR ;
 int S_IRUGO ;
 int S_IXUGO ;
 int d_make_root (struct inode*) ;
 struct dev_data* dev_new () ;
 int ep0_operations ;
 int gadget_fs_operations ;
 int gadgetfs_create_file (struct super_block*,int ,struct dev_data*,int *) ;
 struct inode* gadgetfs_make_inode (struct super_block*,int *,int *,int) ;
 int put_dev (struct dev_data*) ;
 int simple_dir_inode_operations ;
 int simple_dir_operations ;
 struct dev_data* the_device ;
 int usb_get_gadget_udc_name () ;

__attribute__((used)) static int
gadgetfs_fill_super (struct super_block *sb, struct fs_context *fc)
{
 struct inode *inode;
 struct dev_data *dev;

 if (the_device)
  return -ESRCH;

 CHIP = usb_get_gadget_udc_name();
 if (!CHIP)
  return -ENODEV;


 sb->s_blocksize = PAGE_SIZE;
 sb->s_blocksize_bits = PAGE_SHIFT;
 sb->s_magic = GADGETFS_MAGIC;
 sb->s_op = &gadget_fs_operations;
 sb->s_time_gran = 1;


 inode = gadgetfs_make_inode (sb,
   ((void*)0), &simple_dir_operations,
   S_IFDIR | S_IRUGO | S_IXUGO);
 if (!inode)
  goto Enomem;
 inode->i_op = &simple_dir_inode_operations;
 if (!(sb->s_root = d_make_root (inode)))
  goto Enomem;




 dev = dev_new ();
 if (!dev)
  goto Enomem;

 dev->sb = sb;
 dev->dentry = gadgetfs_create_file(sb, CHIP, dev, &ep0_operations);
 if (!dev->dentry) {
  put_dev(dev);
  goto Enomem;
 }




 the_device = dev;
 return 0;

Enomem:
 return -ENOMEM;
}
