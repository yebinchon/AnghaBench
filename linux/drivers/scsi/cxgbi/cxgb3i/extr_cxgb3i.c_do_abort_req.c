
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct t3cdev {int dummy; } ;
struct sk_buff {int dummy; } ;
struct cxgbi_sock {int lock; int err; int tid; int flags; int state; } ;
struct cpl_abort_req_rss {scalar_t__ status; } ;


 int CPL_ABORT_NO_RST ;
 scalar_t__ CPL_ERR_PERSIST_NEG_ADVICE ;
 scalar_t__ CPL_ERR_RTX_NEG_ADVICE ;
 int CTPF_ABORT_REQ_RCVD ;
 int CTPF_ABORT_RPL_PENDING ;
 int CTP_ABORTING ;
 int CXGBI_DBG_SOCK ;
 int CXGBI_DBG_TOE ;
 int __kfree_skb (struct sk_buff*) ;
 int abort_status_to_errno (struct cxgbi_sock*,scalar_t__,int*) ;
 struct cpl_abort_req_rss* cplhdr (struct sk_buff*) ;
 int cxgbi_sock_clear_flag (struct cxgbi_sock*,int ) ;
 int cxgbi_sock_closed (struct cxgbi_sock*) ;
 int cxgbi_sock_flag (struct cxgbi_sock*,int ) ;
 int cxgbi_sock_get (struct cxgbi_sock*) ;
 int cxgbi_sock_put (struct cxgbi_sock*) ;
 int cxgbi_sock_set_flag (struct cxgbi_sock*,int ) ;
 int cxgbi_sock_set_state (struct cxgbi_sock*,int ) ;
 int log_debug (int,char*,struct cxgbi_sock*,int ,int ,int ) ;
 int send_abort_rpl (struct cxgbi_sock*,int) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static int do_abort_req(struct t3cdev *cdev, struct sk_buff *skb, void *ctx)
{
 const struct cpl_abort_req_rss *req = cplhdr(skb);
 struct cxgbi_sock *csk = ctx;
 int rst_status = CPL_ABORT_NO_RST;

 log_debug(1 << CXGBI_DBG_TOE | 1 << CXGBI_DBG_SOCK,
  "csk 0x%p,%u,0x%lx,%u.\n",
  csk, csk->state, csk->flags, csk->tid);

 if (req->status == CPL_ERR_RTX_NEG_ADVICE ||
     req->status == CPL_ERR_PERSIST_NEG_ADVICE) {
  goto done;
 }

 cxgbi_sock_get(csk);
 spin_lock_bh(&csk->lock);

 if (!cxgbi_sock_flag(csk, CTPF_ABORT_REQ_RCVD)) {
  cxgbi_sock_set_flag(csk, CTPF_ABORT_REQ_RCVD);
  cxgbi_sock_set_state(csk, CTP_ABORTING);
  goto out;
 }

 cxgbi_sock_clear_flag(csk, CTPF_ABORT_REQ_RCVD);
 send_abort_rpl(csk, rst_status);

 if (!cxgbi_sock_flag(csk, CTPF_ABORT_RPL_PENDING)) {
  csk->err = abort_status_to_errno(csk, req->status, &rst_status);
  cxgbi_sock_closed(csk);
 }

out:
 spin_unlock_bh(&csk->lock);
 cxgbi_sock_put(csk);
done:
 __kfree_skb(skb);
 return 0;
}
