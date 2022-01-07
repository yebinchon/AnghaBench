
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {unsigned char* data; } ;


 int GFP_ATOMIC ;
 int MAC_SKB_BACK_PTR_SIZE ;
 int XLR_RX_BUF_SIZE ;
 struct sk_buff* alloc_skb (int ,int ) ;
 int memcpy (unsigned char*,struct sk_buff**,int) ;
 int skb_reserve (struct sk_buff*,int ) ;

__attribute__((used)) static inline unsigned char *xlr_alloc_skb(void)
{
 struct sk_buff *skb;
 int buf_len = sizeof(struct sk_buff *);
 unsigned char *skb_data;


 skb = alloc_skb(XLR_RX_BUF_SIZE, GFP_ATOMIC);
 if (!skb)
  return ((void*)0);
 skb_data = skb->data;
 skb_reserve(skb, MAC_SKB_BACK_PTR_SIZE);
 memcpy(skb_data, &skb, buf_len);

 return skb->data;
}
