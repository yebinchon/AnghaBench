
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ data; } ;
struct nlmsghdr {int dummy; } ;
struct genlmsghdr {int dummy; } ;


 void* genlmsg_data (struct genlmsghdr*) ;
 int genlmsg_end (struct sk_buff*,void*) ;
 int genlmsg_unicast (int *,struct sk_buff*,int ) ;
 int init_net ;
 int listener_nlportid ;
 struct genlmsghdr* nlmsg_data (struct nlmsghdr*) ;

__attribute__((used)) static int send_data(struct sk_buff *skb)
{
 struct genlmsghdr *genlhdr = nlmsg_data((struct nlmsghdr *)skb->data);
 void *data = genlmsg_data(genlhdr);

 genlmsg_end(skb, data);

 return genlmsg_unicast(&init_net, skb, listener_nlportid);
}
