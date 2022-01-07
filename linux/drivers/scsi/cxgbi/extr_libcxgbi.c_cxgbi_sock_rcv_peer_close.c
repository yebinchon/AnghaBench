
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cxgbi_sock {int state; int lock; int tid; int flags; } ;


 int CTPF_ABORT_RPL_PENDING ;



 int CTP_CLOSE_WAIT_2 ;

 int CTP_PASSIVE_CLOSE ;
 int CXGBI_DBG_SOCK ;
 int cxgbi_inform_iscsi_conn_closing (struct cxgbi_sock*) ;
 int cxgbi_sock_closed (struct cxgbi_sock*) ;
 scalar_t__ cxgbi_sock_flag (struct cxgbi_sock*,int ) ;
 int cxgbi_sock_get (struct cxgbi_sock*) ;
 int cxgbi_sock_put (struct cxgbi_sock*) ;
 int cxgbi_sock_set_state (struct cxgbi_sock*,int ) ;
 int log_debug (int,char*,struct cxgbi_sock*,int,int ,int ) ;
 int pr_err (char*,struct cxgbi_sock*,int,int ,int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

void cxgbi_sock_rcv_peer_close(struct cxgbi_sock *csk)
{
 log_debug(1 << CXGBI_DBG_SOCK, "csk 0x%p,%u,0x%lx,%u.\n",
  csk, (csk)->state, (csk)->flags, (csk)->tid);
 cxgbi_sock_get(csk);
 spin_lock_bh(&csk->lock);

 if (cxgbi_sock_flag(csk, CTPF_ABORT_RPL_PENDING))
  goto done;

 switch (csk->state) {
 case 128:
  cxgbi_sock_set_state(csk, CTP_PASSIVE_CLOSE);
  break;
 case 130:
  cxgbi_sock_set_state(csk, CTP_CLOSE_WAIT_2);
  break;
 case 129:
  cxgbi_sock_closed(csk);
  break;
 case 131:
  break;
 default:
  pr_err("csk 0x%p,%u,0x%lx,%u, bad state.\n",
   csk, csk->state, csk->flags, csk->tid);
 }
 cxgbi_inform_iscsi_conn_closing(csk);
done:
 spin_unlock_bh(&csk->lock);
 cxgbi_sock_put(csk);
}
