
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {void* private_data; } ;


 long iminor (struct inode*) ;

__attribute__((used)) static int nd_open(struct inode *inode, struct file *file)
{
 long minor = iminor(inode);

 file->private_data = (void *) minor;
 return 0;
}
