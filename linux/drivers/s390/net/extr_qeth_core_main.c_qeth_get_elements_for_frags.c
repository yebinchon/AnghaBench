
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
typedef int skb_frag_t ;
typedef scalar_t__ addr_t ;
struct TYPE_2__ {int nr_frags; int * frags; } ;


 scalar_t__ qeth_get_elements_for_range (scalar_t__,scalar_t__) ;
 scalar_t__ skb_frag_address (int *) ;
 scalar_t__ skb_frag_size (int *) ;
 TYPE_1__* skb_shinfo (struct sk_buff*) ;

__attribute__((used)) static int qeth_get_elements_for_frags(struct sk_buff *skb)
{
 int cnt, elements = 0;

 for (cnt = 0; cnt < skb_shinfo(skb)->nr_frags; cnt++) {
  skb_frag_t *frag = &skb_shinfo(skb)->frags[cnt];

  elements += qeth_get_elements_for_range(
   (addr_t)skb_frag_address(frag),
   (addr_t)skb_frag_address(frag) + skb_frag_size(frag));
 }
 return elements;
}
