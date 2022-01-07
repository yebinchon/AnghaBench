
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slim_device {int dummy; } ;
struct device {int dummy; } ;


 int kfree (struct slim_device*) ;
 struct slim_device* to_slim_device (struct device*) ;

__attribute__((used)) static void slim_dev_release(struct device *dev)
{
 struct slim_device *sbdev = to_slim_device(dev);

 kfree(sbdev);
}
