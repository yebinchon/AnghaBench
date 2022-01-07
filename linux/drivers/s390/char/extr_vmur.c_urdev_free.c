
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct urdev {TYPE_1__* cdev; } ;
struct TYPE_2__ {int dev; } ;


 int TRACE (char*,struct urdev*) ;
 int kfree (struct urdev*) ;
 int put_device (int *) ;

__attribute__((used)) static void urdev_free(struct urdev *urd)
{
 TRACE("urdev_free: %p\n", urd);
 if (urd->cdev)
  put_device(&urd->cdev->dev);
 kfree(urd);
}
