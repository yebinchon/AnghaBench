
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int kfree (struct device*) ;

__attribute__((used)) static void controller_device_release(struct device *dev)
{
 kfree(dev);
}
