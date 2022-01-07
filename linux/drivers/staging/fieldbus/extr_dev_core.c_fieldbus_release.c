
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {struct fb_open_file* private_data; } ;
struct fb_open_file {int dummy; } ;


 int kfree (struct fb_open_file*) ;

__attribute__((used)) static int fieldbus_release(struct inode *node, struct file *filp)
{
 struct fb_open_file *of = filp->private_data;

 kfree(of);
 return 0;
}
