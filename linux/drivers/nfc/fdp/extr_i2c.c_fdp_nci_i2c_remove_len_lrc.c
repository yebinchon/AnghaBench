
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ len; } ;


 int FDP_FRAME_HEADROOM ;
 scalar_t__ FDP_FRAME_TAILROOM ;
 int skb_pull (struct sk_buff*,int ) ;
 int skb_trim (struct sk_buff*,scalar_t__) ;

__attribute__((used)) static void fdp_nci_i2c_remove_len_lrc(struct sk_buff *skb)
{
 skb_pull(skb, FDP_FRAME_HEADROOM);
 skb_trim(skb, skb->len - FDP_FRAME_TAILROOM);
}
