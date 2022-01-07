
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct sk_buff {int len; int * data; } ;
struct rtllib_info_element {int dummy; } ;
struct rtllib_authentication {int status; } ;
struct net_device {int dummy; } ;


 int ENOMEM ;
 int GFP_ATOMIC ;
 int MFIE_TYPE_CHALLENGE ;
 int * kmemdup (int *,int,int ) ;
 int le16_to_cpu (int ) ;
 int netdev_dbg (struct net_device*,char*,int) ;

__attribute__((used)) static inline u16 auth_parse(struct net_device *dev, struct sk_buff *skb,
        u8 **challenge, int *chlen)
{
 struct rtllib_authentication *a;
 u8 *t;

 if (skb->len < (sizeof(struct rtllib_authentication) -
     sizeof(struct rtllib_info_element))) {
  netdev_dbg(dev, "invalid len in auth resp: %d\n", skb->len);
  return 0xcafe;
 }
 *challenge = ((void*)0);
 a = (struct rtllib_authentication *) skb->data;
 if (skb->len > (sizeof(struct rtllib_authentication) + 3)) {
  t = skb->data + sizeof(struct rtllib_authentication);

  if (*(t++) == MFIE_TYPE_CHALLENGE) {
   *chlen = *(t++);
   *challenge = kmemdup(t, *chlen, GFP_ATOMIC);
   if (!*challenge)
    return -ENOMEM;
  }
 }
 return le16_to_cpu(a->status);
}
