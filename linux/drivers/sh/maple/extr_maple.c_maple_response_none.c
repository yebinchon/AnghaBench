
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct maple_device {scalar_t__ unit; size_t port; int busy; int dev; int maple_wait; int (* can_unload ) (struct maple_device*) ;} ;


 int atomic_set (int *,int) ;
 int* checked ;
 int dev_info (int *,char*,size_t,...) ;
 int* empty ;
 int fullscan ;
 scalar_t__ likely (int) ;
 int maple_clean_submap (struct maple_device*) ;
 int maple_detach_driver (struct maple_device*) ;
 int started ;
 int stub1 (struct maple_device*) ;
 int wake_up (int *) ;

__attribute__((used)) static void maple_response_none(struct maple_device *mdev)
{
 maple_clean_submap(mdev);

 if (likely(mdev->unit != 0)) {
  if (mdev->can_unload) {
   if (!mdev->can_unload(mdev)) {
    atomic_set(&mdev->busy, 2);
    wake_up(&mdev->maple_wait);
    return;
   }
  }

  dev_info(&mdev->dev, "detaching device at (%d, %d)\n",
   mdev->port, mdev->unit);
  maple_detach_driver(mdev);
  return;
 } else {
  if (!started || !fullscan) {
   if (checked[mdev->port] == 0) {
    checked[mdev->port] = 1;
    empty[mdev->port] = 1;
    dev_info(&mdev->dev, "no devices"
     " to port %d\n", mdev->port);
   }
   return;
  }
 }

 atomic_set(&mdev->busy, 0);
}
