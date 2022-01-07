
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {void* data; } ;
struct qeth_qdio_out_buffer {int next_element_to_fill; int* is_header; int skb_list; struct qdio_buffer* buffer; } ;
struct qeth_hdr {int dummy; } ;
struct qdio_buffer {TYPE_1__* element; } ;
struct TYPE_2__ {unsigned int length; int eflags; struct qeth_hdr* addr; } ;


 int SBAL_EFLAGS_FIRST_FRAG ;
 unsigned int __qeth_fill_buffer (struct sk_buff*,struct qeth_qdio_out_buffer*,int,unsigned int) ;
 int __skb_queue_tail (int *,struct sk_buff*) ;

__attribute__((used)) static unsigned int qeth_fill_buffer(struct qeth_qdio_out_buffer *buf,
         struct sk_buff *skb, struct qeth_hdr *hdr,
         unsigned int offset, unsigned int hd_len)
{
 struct qdio_buffer *buffer = buf->buffer;
 bool is_first_elem = 1;

 __skb_queue_tail(&buf->skb_list, skb);


 if (hd_len) {
  int element = buf->next_element_to_fill;
  is_first_elem = 0;

  buffer->element[element].addr = hdr;
  buffer->element[element].length = hd_len;
  buffer->element[element].eflags = SBAL_EFLAGS_FIRST_FRAG;

  buf->is_header[element] = ((void *)hdr != skb->data);
  buf->next_element_to_fill++;
 }

 return __qeth_fill_buffer(skb, buf, is_first_elem, offset);
}
