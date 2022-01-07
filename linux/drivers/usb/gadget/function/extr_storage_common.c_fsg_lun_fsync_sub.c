
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsg_lun {scalar_t__ ro; struct file* filp; } ;
struct file {int dummy; } ;


 int vfs_fsync (struct file*,int) ;

int fsg_lun_fsync_sub(struct fsg_lun *curlun)
{
 struct file *filp = curlun->filp;

 if (curlun->ro || !filp)
  return 0;
 return vfs_fsync(filp, 1);
}
