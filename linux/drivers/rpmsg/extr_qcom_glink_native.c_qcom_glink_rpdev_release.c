
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpmsg_device {int ept; } ;
struct glink_channel {int * rpdev; } ;
struct device {int dummy; } ;


 int kfree (struct rpmsg_device*) ;
 struct glink_channel* to_glink_channel (int ) ;
 struct rpmsg_device* to_rpmsg_device (struct device*) ;

__attribute__((used)) static void qcom_glink_rpdev_release(struct device *dev)
{
 struct rpmsg_device *rpdev = to_rpmsg_device(dev);
 struct glink_channel *channel = to_glink_channel(rpdev->ept);

 channel->rpdev = ((void*)0);
 kfree(rpdev);
}
