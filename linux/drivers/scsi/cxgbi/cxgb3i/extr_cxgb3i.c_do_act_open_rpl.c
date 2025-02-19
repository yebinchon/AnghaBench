
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct t3cdev {int dummy; } ;
struct sk_buff {int dummy; } ;
struct TYPE_10__ {scalar_t__ function; } ;
struct TYPE_8__ {int s_addr; } ;
struct TYPE_9__ {int sin_port; TYPE_3__ sin_addr; } ;
struct TYPE_6__ {int s_addr; } ;
struct TYPE_7__ {int sin_port; TYPE_1__ sin_addr; } ;
struct cxgbi_sock {int lock; TYPE_5__ retry_timer; TYPE_4__ daddr; TYPE_2__ saddr; int atid; int flags; int state; } ;
struct cpl_act_open_rpl {scalar_t__ status; } ;


 scalar_t__ CPL_ERR_ARP_MISS ;
 scalar_t__ CPL_ERR_CONN_EXIST ;
 scalar_t__ CPL_ERR_TCAM_FULL ;
 int GET_TID (struct cpl_act_open_rpl*) ;
 int HZ ;
 int __kfree_skb (struct sk_buff*) ;
 scalar_t__ act_open_retry_timer ;
 int act_open_rpl_status_to_errno (scalar_t__) ;
 struct cpl_act_open_rpl* cplhdr (struct sk_buff*) ;
 int cxgb3_queue_tid_release (struct t3cdev*,int ) ;
 int cxgbi_sock_fail_act_open (struct cxgbi_sock*,int ) ;
 int cxgbi_sock_get (struct cxgbi_sock*) ;
 int cxgbi_sock_put (struct cxgbi_sock*) ;
 scalar_t__ jiffies ;
 int mod_timer (TYPE_5__*,scalar_t__) ;
 int ntohs (int ) ;
 int pr_info (char*,struct cxgbi_sock*,int ,int ,int ,scalar_t__,int *,int ,int *,int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static int do_act_open_rpl(struct t3cdev *tdev, struct sk_buff *skb, void *ctx)
{
 struct cxgbi_sock *csk = ctx;
 struct cpl_act_open_rpl *rpl = cplhdr(skb);

 pr_info("csk 0x%p,%u,0x%lx,%u, status %u, %pI4:%u-%pI4:%u.\n",
  csk, csk->state, csk->flags, csk->atid, rpl->status,
  &csk->saddr.sin_addr.s_addr, ntohs(csk->saddr.sin_port),
  &csk->daddr.sin_addr.s_addr, ntohs(csk->daddr.sin_port));

 if (rpl->status != CPL_ERR_TCAM_FULL &&
     rpl->status != CPL_ERR_CONN_EXIST &&
     rpl->status != CPL_ERR_ARP_MISS)
  cxgb3_queue_tid_release(tdev, GET_TID(rpl));

 cxgbi_sock_get(csk);
 spin_lock_bh(&csk->lock);
 if (rpl->status == CPL_ERR_CONN_EXIST &&
     csk->retry_timer.function != act_open_retry_timer) {
  csk->retry_timer.function = act_open_retry_timer;
  mod_timer(&csk->retry_timer, jiffies + HZ / 2);
 } else
  cxgbi_sock_fail_act_open(csk,
    act_open_rpl_status_to_errno(rpl->status));

 spin_unlock_bh(&csk->lock);
 cxgbi_sock_put(csk);
 __kfree_skb(skb);
 return 0;
}
