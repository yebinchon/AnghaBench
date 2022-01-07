
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpmsg_endpoint {int dummy; } ;
struct glink_channel {int dummy; } ;


 int __qcom_glink_send (struct glink_channel*,void*,int,int) ;
 struct glink_channel* to_glink_channel (struct rpmsg_endpoint*) ;

__attribute__((used)) static int qcom_glink_send(struct rpmsg_endpoint *ept, void *data, int len)
{
 struct glink_channel *channel = to_glink_channel(ept);

 return __qcom_glink_send(channel, data, len, 1);
}
