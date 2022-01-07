
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rio_dev {int dummy; } ;
struct device {int dummy; } ;


 int kfree (struct rio_dev*) ;
 struct rio_dev* to_rio_dev (struct device*) ;

__attribute__((used)) static void rio_release_dev(struct device *dev)
{
 struct rio_dev *rdev;

 rdev = to_rio_dev(dev);
 kfree(rdev);
}
