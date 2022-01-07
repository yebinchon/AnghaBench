
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct pn533_poll_modulations {int len; int data; } ;
struct pn533 {int dummy; } ;


 struct sk_buff* pn533_alloc_skb (struct pn533*,int ) ;
 int skb_put_data (struct sk_buff*,int *,int ) ;

__attribute__((used)) static struct sk_buff *pn533_alloc_poll_in_frame(struct pn533 *dev,
     struct pn533_poll_modulations *mod)
{
 struct sk_buff *skb;

 skb = pn533_alloc_skb(dev, mod->len);
 if (!skb)
  return ((void*)0);

 skb_put_data(skb, &mod->data, mod->len);

 return skb;
}
