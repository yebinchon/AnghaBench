
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ep_device {int dummy; } ;
struct device {int dummy; } ;


 int kfree (struct ep_device*) ;
 struct ep_device* to_ep_device (struct device*) ;

__attribute__((used)) static void ep_device_release(struct device *dev)
{
 struct ep_device *ep_dev = to_ep_device(dev);

 kfree(ep_dev);
}
