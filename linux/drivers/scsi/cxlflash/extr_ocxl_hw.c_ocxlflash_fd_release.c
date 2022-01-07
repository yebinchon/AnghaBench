
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int afu_release (struct inode*,struct file*) ;

__attribute__((used)) static int ocxlflash_fd_release(struct inode *inode, struct file *file)
{
 return afu_release(inode, file);
}
