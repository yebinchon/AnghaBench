
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpmsg_channel_info {int dummy; } ;
struct device {int dummy; } ;


 int EINVAL ;
 int device_unregister (struct device*) ;
 int put_device (struct device*) ;
 struct device* rpmsg_find_device (struct device*,struct rpmsg_channel_info*) ;

int rpmsg_unregister_device(struct device *parent,
       struct rpmsg_channel_info *chinfo)
{
 struct device *dev;

 dev = rpmsg_find_device(parent, chinfo);
 if (!dev)
  return -EINVAL;

 device_unregister(dev);

 put_device(dev);

 return 0;
}
