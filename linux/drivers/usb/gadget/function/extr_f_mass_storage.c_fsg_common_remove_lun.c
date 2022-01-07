
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsg_lun {int dev; } ;


 scalar_t__ device_is_registered (int *) ;
 int device_unregister (int *) ;
 int fsg_lun_close (struct fsg_lun*) ;
 int kfree (struct fsg_lun*) ;

void fsg_common_remove_lun(struct fsg_lun *lun)
{
 if (device_is_registered(&lun->dev))
  device_unregister(&lun->dev);
 fsg_lun_close(lun);
 kfree(lun);
}
