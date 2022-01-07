
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * parent; int * bus; } ;
struct maple_device {int port; int unit; int maple_wait; TYPE_1__ dev; int mq; } ;


 int GFP_KERNEL ;
 int init_waitqueue_head (int *) ;
 int kfree (struct maple_device*) ;
 struct maple_device* kzalloc (int,int ) ;
 int maple_allocq (struct maple_device*) ;
 int maple_bus ;
 int maple_bus_type ;

__attribute__((used)) static struct maple_device *maple_alloc_dev(int port, int unit)
{
 struct maple_device *mdev;




 mdev = kzalloc(sizeof(*mdev), GFP_KERNEL);
 if (!mdev)
  return ((void*)0);

 mdev->port = port;
 mdev->unit = unit;

 mdev->mq = maple_allocq(mdev);

 if (!mdev->mq) {
  kfree(mdev);
  return ((void*)0);
 }
 mdev->dev.bus = &maple_bus_type;
 mdev->dev.parent = &maple_bus;
 init_waitqueue_head(&mdev->maple_wait);
 return mdev;
}
