
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rio_dev {int dev; } ;


 int put_device (int *) ;

void rio_dev_put(struct rio_dev *rdev)
{
 if (rdev)
  put_device(&rdev->dev);
}
