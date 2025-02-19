
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
struct skb_seq_state {int dummy; } ;
struct sk_buff {int dummy; } ;
struct scatterlist {int dummy; } ;
struct cxgbit_lro_pdu_cb {scalar_t__ dlen; scalar_t__ doffset; } ;


 struct cxgbit_lro_pdu_cb* cxgbit_rx_pdu_cb (struct sk_buff*) ;
 scalar_t__ sg_pcopy_from_buffer (struct scatterlist*,unsigned int,void*,unsigned int,scalar_t__) ;
 int skb_abort_seq_read (struct skb_seq_state*) ;
 int skb_prepare_seq_read (struct sk_buff*,scalar_t__,scalar_t__,struct skb_seq_state*) ;
 unsigned int skb_seq_read (unsigned int,int const**,struct skb_seq_state*) ;

__attribute__((used)) static void
cxgbit_skb_copy_to_sg(struct sk_buff *skb, struct scatterlist *sg,
        unsigned int nents, u32 skip)
{
 struct skb_seq_state st;
 const u8 *buf;
 unsigned int consumed = 0, buf_len;
 struct cxgbit_lro_pdu_cb *pdu_cb = cxgbit_rx_pdu_cb(skb);

 skb_prepare_seq_read(skb, pdu_cb->doffset,
        pdu_cb->doffset + pdu_cb->dlen,
        &st);

 while (1) {
  buf_len = skb_seq_read(consumed, &buf, &st);
  if (!buf_len) {
   skb_abort_seq_read(&st);
   break;
  }

  consumed += sg_pcopy_from_buffer(sg, nents, (void *)buf,
       buf_len, skip + consumed);
 }
}
