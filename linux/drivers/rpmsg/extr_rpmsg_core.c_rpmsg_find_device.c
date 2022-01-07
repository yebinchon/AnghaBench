
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpmsg_channel_info {int dummy; } ;
struct device {int dummy; } ;


 struct device* device_find_child (struct device*,struct rpmsg_channel_info*,int ) ;
 int rpmsg_device_match ;

struct device *rpmsg_find_device(struct device *parent,
     struct rpmsg_channel_info *chinfo)
{
 return device_find_child(parent, chinfo, rpmsg_device_match);

}
