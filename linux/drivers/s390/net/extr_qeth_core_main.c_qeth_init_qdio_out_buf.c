
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qeth_qdio_out_q {struct qeth_qdio_out_buffer** bufs; int * qdio_bufs; } ;
struct TYPE_2__ {int lock; } ;
struct qeth_qdio_out_buffer {int state; struct qeth_qdio_out_buffer* next_pending; struct qeth_qdio_out_q* q; TYPE_1__ skb_list; int buffer; } ;


 int ENOMEM ;
 int GFP_ATOMIC ;
 int QETH_QDIO_BUF_EMPTY ;
 int atomic_set (int *,int ) ;
 struct qeth_qdio_out_buffer* kmem_cache_zalloc (int ,int ) ;
 int lockdep_set_class (int *,int *) ;
 int qdio_out_skb_queue_key ;
 int qeth_qdio_outbuf_cache ;
 int skb_queue_head_init (TYPE_1__*) ;

__attribute__((used)) static int qeth_init_qdio_out_buf(struct qeth_qdio_out_q *q, int bidx)
{
 struct qeth_qdio_out_buffer *newbuf;

 newbuf = kmem_cache_zalloc(qeth_qdio_outbuf_cache, GFP_ATOMIC);
 if (!newbuf)
  return -ENOMEM;

 newbuf->buffer = q->qdio_bufs[bidx];
 skb_queue_head_init(&newbuf->skb_list);
 lockdep_set_class(&newbuf->skb_list.lock, &qdio_out_skb_queue_key);
 newbuf->q = q;
 newbuf->next_pending = q->bufs[bidx];
 atomic_set(&newbuf->state, QETH_QDIO_BUF_EMPTY);
 q->bufs[bidx] = newbuf;
 return 0;
}
