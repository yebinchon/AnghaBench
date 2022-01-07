
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int len; } ;
struct qdio_buffer_element {scalar_t__ addr; } ;
struct page {int dummy; } ;
struct TYPE_2__ {unsigned int nr_frags; } ;


 int get_page (struct page*) ;
 unsigned int min (int,int ) ;
 int skb_add_rx_frag (struct sk_buff*,unsigned int,struct page*,int,int,int) ;
 int skb_put_data (struct sk_buff*,scalar_t__,unsigned int) ;
 TYPE_1__* skb_shinfo (struct sk_buff*) ;
 int skb_tailroom (struct sk_buff*) ;
 struct page* virt_to_page (scalar_t__) ;

__attribute__((used)) static void qeth_create_skb_frag(struct qdio_buffer_element *element,
     struct sk_buff *skb, int offset, int data_len)
{
 struct page *page = virt_to_page(element->addr);
 unsigned int next_frag;


 if (!skb->len) {
  unsigned int linear = min(data_len, skb_tailroom(skb));

  skb_put_data(skb, element->addr + offset, linear);
  data_len -= linear;
  if (!data_len)
   return;
  offset += linear;

 }

 next_frag = skb_shinfo(skb)->nr_frags;
 get_page(page);
 skb_add_rx_frag(skb, next_frag, page, offset, data_len, data_len);
}
