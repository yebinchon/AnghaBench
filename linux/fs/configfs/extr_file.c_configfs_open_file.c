
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int CONFIGFS_ITEM_ATTR ;
 int __configfs_open_file (struct inode*,struct file*,int ) ;

__attribute__((used)) static int configfs_open_file(struct inode *inode, struct file *filp)
{
 return __configfs_open_file(inode, filp, CONFIGFS_ITEM_ATTR);
}
