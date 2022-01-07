
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sk_buff {int dummy; } ;


 int nlmsg_unicast (int ,struct sk_buff*,int ) ;
 int nls ;

__attribute__((used)) static int
iscsi_unicast_skb(struct sk_buff *skb, u32 portid)
{
 return nlmsg_unicast(nls, skb, portid);
}
