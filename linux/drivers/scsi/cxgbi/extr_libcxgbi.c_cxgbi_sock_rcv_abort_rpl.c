
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cxgbi_sock {int lock; int tid; int flags; int state; } ;


 int CTPF_ABORT_REQ_RCVD ;
 int CTPF_ABORT_RPL_PENDING ;
 int CTPF_ABORT_RPL_RCVD ;
 int cxgbi_sock_clear_flag (struct cxgbi_sock*,int ) ;
 int cxgbi_sock_closed (struct cxgbi_sock*) ;
 scalar_t__ cxgbi_sock_flag (struct cxgbi_sock*,int ) ;
 int cxgbi_sock_get (struct cxgbi_sock*) ;
 int cxgbi_sock_put (struct cxgbi_sock*) ;
 int cxgbi_sock_set_flag (struct cxgbi_sock*,int ) ;
 int pr_err (char*,struct cxgbi_sock*,int ,int ,int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

void cxgbi_sock_rcv_abort_rpl(struct cxgbi_sock *csk)
{
 cxgbi_sock_get(csk);
 spin_lock_bh(&csk->lock);

 cxgbi_sock_set_flag(csk, CTPF_ABORT_RPL_RCVD);
 if (cxgbi_sock_flag(csk, CTPF_ABORT_RPL_PENDING)) {
  cxgbi_sock_clear_flag(csk, CTPF_ABORT_RPL_PENDING);
  if (cxgbi_sock_flag(csk, CTPF_ABORT_REQ_RCVD))
   pr_err("csk 0x%p,%u,0x%lx,%u,ABT_RPL_RSS.\n",
          csk, csk->state, csk->flags, csk->tid);
  cxgbi_sock_closed(csk);
 }

 spin_unlock_bh(&csk->lock);
 cxgbi_sock_put(csk);
}
