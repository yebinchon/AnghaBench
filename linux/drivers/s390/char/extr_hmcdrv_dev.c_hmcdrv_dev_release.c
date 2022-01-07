
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int * private_data; } ;


 int THIS_MODULE ;
 int hmcdrv_ftp_shutdown () ;
 int kfree (int *) ;
 int module_put (int ) ;
 int pr_debug (char*,struct file*) ;

__attribute__((used)) static int hmcdrv_dev_release(struct inode *inode, struct file *fp)
{
 pr_debug("closing file '/dev/%pD'\n", fp);
 kfree(fp->private_data);
 fp->private_data = ((void*)0);
 hmcdrv_ftp_shutdown();
 module_put(THIS_MODULE);
 return 0;
}
