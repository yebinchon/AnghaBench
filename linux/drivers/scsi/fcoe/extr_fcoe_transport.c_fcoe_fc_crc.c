
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sk_buff {unsigned char* data; } ;
struct fc_frame {int dummy; } ;
typedef int skb_frag_t ;
struct TYPE_2__ {unsigned int nr_frags; int * frags; } ;


 unsigned long PAGE_MASK ;
 unsigned long PAGE_SHIFT ;
 scalar_t__ PAGE_SIZE ;
 int crc32 (int ,unsigned char*,unsigned long) ;
 struct sk_buff* fp_skb (struct fc_frame*) ;
 unsigned char* kmap_atomic (scalar_t__) ;
 int kunmap_atomic (unsigned char*) ;
 unsigned long min (unsigned long,scalar_t__) ;
 unsigned long skb_frag_off (int *) ;
 scalar_t__ skb_frag_page (int *) ;
 unsigned long skb_frag_size (int *) ;
 unsigned long skb_headlen (struct sk_buff*) ;
 TYPE_1__* skb_shinfo (struct sk_buff*) ;

u32 fcoe_fc_crc(struct fc_frame *fp)
{
 struct sk_buff *skb = fp_skb(fp);
 skb_frag_t *frag;
 unsigned char *data;
 unsigned long off, len, clen;
 u32 crc;
 unsigned i;

 crc = crc32(~0, skb->data, skb_headlen(skb));

 for (i = 0; i < skb_shinfo(skb)->nr_frags; i++) {
  frag = &skb_shinfo(skb)->frags[i];
  off = skb_frag_off(frag);
  len = skb_frag_size(frag);
  while (len > 0) {
   clen = min(len, PAGE_SIZE - (off & ~PAGE_MASK));
   data = kmap_atomic(
    skb_frag_page(frag) + (off >> PAGE_SHIFT));
   crc = crc32(crc, data + (off & ~PAGE_MASK), clen);
   kunmap_atomic(data);
   off += clen;
   len -= clen;
  }
 }
 return crc;
}
