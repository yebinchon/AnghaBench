
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {struct fb_info* private_data; } ;
struct fb_info {int dummy; } ;


 struct inode* file_inode (struct file*) ;
 int iminor (struct inode*) ;
 struct fb_info** registered_fb ;

__attribute__((used)) static struct fb_info *file_fb_info(struct file *file)
{
 struct inode *inode = file_inode(file);
 int fbidx = iminor(inode);
 struct fb_info *info = registered_fb[fbidx];

 if (info != file->private_data)
  info = ((void*)0);
 return info;
}
