
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {int dummy; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_NOFS ;
 int dlm_nl_seqnum ;
 int family ;
 struct sk_buff* genlmsg_new (size_t,int ) ;
 void* genlmsg_put (struct sk_buff*,int ,int ,int *,int ,int ) ;
 int nlmsg_free (struct sk_buff*) ;

__attribute__((used)) static int prepare_data(u8 cmd, struct sk_buff **skbp, size_t size)
{
 struct sk_buff *skb;
 void *data;

 skb = genlmsg_new(size, GFP_NOFS);
 if (!skb)
  return -ENOMEM;


 data = genlmsg_put(skb, 0, dlm_nl_seqnum++, &family, 0, cmd);
 if (!data) {
  nlmsg_free(skb);
  return -EINVAL;
 }

 *skbp = skb;
 return 0;
}
