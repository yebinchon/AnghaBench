
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mdev_device {int dev; int next; } ;


 int dev_dbg (int *,char*) ;
 int kfree (struct mdev_device*) ;
 int list_del (int *) ;
 int mdev_list_lock ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void mdev_device_free(struct mdev_device *mdev)
{
 mutex_lock(&mdev_list_lock);
 list_del(&mdev->next);
 mutex_unlock(&mdev_list_lock);

 dev_dbg(&mdev->dev, "MDEV: destroying\n");
 kfree(mdev);
}
