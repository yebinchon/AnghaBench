
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct t3cdev {int dummy; } ;
struct sk_buff {int csum; } ;
struct TYPE_4__ {int * function; } ;
struct cxgbi_sock {scalar_t__ state; unsigned int tid; int rcv_win; int lock; int write_queue; int rcv_wup; int rcv_nxt; int copied_seq; int flags; TYPE_2__ retry_timer; int rss_qid; TYPE_1__* cdev; } ;
struct cpl_act_establish {int tcp_opt; int snd_isn; int rcv_isn; int tos_tid; } ;
struct TYPE_3__ {int lldev; } ;


 int CTPF_ACTIVE_CLOSE_NEEDED ;
 int CTPF_HAS_TID ;
 scalar_t__ CTP_ACTIVE_OPEN ;
 int CXGBI_DBG_SOCK ;
 int CXGBI_DBG_TOE ;
 unsigned int GET_TID (struct cpl_act_establish*) ;
 unsigned int G_PASS_OPEN_TID (int ) ;
 int G_QNUM (int ) ;
 int M_RCV_BUFSIZ ;
 int __kfree_skb (struct sk_buff*) ;
 struct cpl_act_establish* cplhdr (struct sk_buff*) ;
 int cxgb3_insert_tid (int ,int *,struct cxgbi_sock*,unsigned int) ;
 int cxgbi_conn_tx_open (struct cxgbi_sock*) ;
 int cxgbi_sock_established (struct cxgbi_sock*,int ,int ) ;
 int cxgbi_sock_flag (struct cxgbi_sock*,int ) ;
 int cxgbi_sock_get (struct cxgbi_sock*) ;
 int cxgbi_sock_set_flag (struct cxgbi_sock*,int ) ;
 int del_timer (TYPE_2__*) ;
 int free_atid (struct cxgbi_sock*) ;
 int log_debug (int,char*,unsigned int,unsigned int,struct cxgbi_sock*,scalar_t__,int ,int ) ;
 int ntohl (int ) ;
 int ntohs (int ) ;
 int pr_info (char*,struct cxgbi_sock*,scalar_t__,int ,unsigned int) ;
 int push_tx_frames (struct cxgbi_sock*,int) ;
 int send_abort_req (struct cxgbi_sock*) ;
 scalar_t__ skb_queue_len (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int t3_client ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int do_act_establish(struct t3cdev *tdev, struct sk_buff *skb, void *ctx)
{
 struct cxgbi_sock *csk = ctx;
 struct cpl_act_establish *req = cplhdr(skb);
 unsigned int tid = GET_TID(req);
 unsigned int atid = G_PASS_OPEN_TID(ntohl(req->tos_tid));
 u32 rcv_isn = ntohl(req->rcv_isn);

 log_debug(1 << CXGBI_DBG_TOE | 1 << CXGBI_DBG_SOCK,
  "atid 0x%x,tid 0x%x, csk 0x%p,%u,0x%lx, isn %u.\n",
  atid, atid, csk, csk->state, csk->flags, rcv_isn);

 cxgbi_sock_get(csk);
 cxgbi_sock_set_flag(csk, CTPF_HAS_TID);
 csk->tid = tid;
 cxgb3_insert_tid(csk->cdev->lldev, &t3_client, csk, tid);

 free_atid(csk);

 csk->rss_qid = G_QNUM(ntohs(skb->csum));

 spin_lock_bh(&csk->lock);
 if (csk->retry_timer.function) {
  del_timer(&csk->retry_timer);
  csk->retry_timer.function = ((void*)0);
 }

 if (unlikely(csk->state != CTP_ACTIVE_OPEN))
  pr_info("csk 0x%p,%u,0x%lx,%u, got EST.\n",
   csk, csk->state, csk->flags, csk->tid);

 csk->copied_seq = csk->rcv_wup = csk->rcv_nxt = rcv_isn;
 if (csk->rcv_win > (M_RCV_BUFSIZ << 10))
  csk->rcv_wup -= csk->rcv_win - (M_RCV_BUFSIZ << 10);

 cxgbi_sock_established(csk, ntohl(req->snd_isn), ntohs(req->tcp_opt));

 if (unlikely(cxgbi_sock_flag(csk, CTPF_ACTIVE_CLOSE_NEEDED)))

  send_abort_req(csk);
 else {
  if (skb_queue_len(&csk->write_queue))
   push_tx_frames(csk, 1);
  cxgbi_conn_tx_open(csk);
 }

 spin_unlock_bh(&csk->lock);
 __kfree_skb(skb);
 return 0;
}
