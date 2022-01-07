
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rpmsg_endpoint {int dummy; } ;
struct TYPE_2__ {int name; } ;
struct rpmsg_device {int src; TYPE_1__ id; } ;
struct rpmsg_channel_info {int dst; int src; int name; } ;


 int RPMSG_ADDR_ANY ;
 int RPMSG_NAME_SIZE ;
 int cros_ec_rpmsg_callback ;
 struct rpmsg_endpoint* rpmsg_create_ept (struct rpmsg_device*,int ,int *,struct rpmsg_channel_info) ;
 int strscpy (int ,int ,int ) ;

__attribute__((used)) static struct rpmsg_endpoint *
cros_ec_rpmsg_create_ept(struct rpmsg_device *rpdev)
{
 struct rpmsg_channel_info chinfo = {};

 strscpy(chinfo.name, rpdev->id.name, RPMSG_NAME_SIZE);
 chinfo.src = rpdev->src;
 chinfo.dst = RPMSG_ADDR_ANY;

 return rpmsg_create_ept(rpdev, cros_ec_rpmsg_callback, ((void*)0), chinfo);
}
