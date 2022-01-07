
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int f_flags; int * private_data; } ;


 int EINVAL ;
 int ENODEV ;
 int O_ACCMODE ;
 int O_NONBLOCK ;
 int O_RDONLY ;
 int THIS_MODULE ;
 int hmcdrv_ftp_startup () ;
 int module_put (int ) ;
 int pr_debug (char*,struct file*,int) ;
 int try_module_get (int ) ;

__attribute__((used)) static int hmcdrv_dev_open(struct inode *inode, struct file *fp)
{
 int rc;



 if (fp->f_flags & O_NONBLOCK)
  return -EINVAL;




 if ((fp->f_flags & O_ACCMODE) == O_RDONLY)
  return -EINVAL;




 if (!try_module_get(THIS_MODULE))
  return -ENODEV;

 fp->private_data = ((void*)0);
 rc = hmcdrv_ftp_startup();
 if (rc)
  module_put(THIS_MODULE);

 pr_debug("open file '/dev/%pD' with return code %d\n", fp, rc);
 return rc;
}
