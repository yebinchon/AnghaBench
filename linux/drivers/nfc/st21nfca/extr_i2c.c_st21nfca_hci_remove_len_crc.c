
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ len; } ;


 int ST21NFCA_FRAME_HEADROOM ;
 scalar_t__ ST21NFCA_FRAME_TAILROOM ;
 int skb_pull (struct sk_buff*,int ) ;
 int skb_trim (struct sk_buff*,scalar_t__) ;

__attribute__((used)) static void st21nfca_hci_remove_len_crc(struct sk_buff *skb)
{
 skb_pull(skb, ST21NFCA_FRAME_HEADROOM);
 skb_trim(skb, skb->len - ST21NFCA_FRAME_TAILROOM);
}
