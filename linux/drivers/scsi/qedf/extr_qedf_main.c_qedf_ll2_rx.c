
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sk_buff {int dummy; } ;
struct qedf_skb_work {int work; struct qedf_ctx* qedf; struct sk_buff* skb; } ;
struct qedf_ctx {int ll2_recv_wq; int dbg_ctx; int link_state; } ;


 int GFP_ATOMIC ;
 int INIT_WORK (int *,int ) ;
 int QEDF_INFO (int *,int ,char*) ;
 scalar_t__ QEDF_LINK_DOWN ;
 int QEDF_LOG_LL2 ;
 int QEDF_WARN (int *,char*) ;
 scalar_t__ atomic_read (int *) ;
 int kfree_skb (struct sk_buff*) ;
 struct qedf_skb_work* kzalloc (int,int ) ;
 int qedf_ll2_process_skb ;
 int queue_work (int ,int *) ;

__attribute__((used)) static int qedf_ll2_rx(void *cookie, struct sk_buff *skb,
 u32 arg1, u32 arg2)
{
 struct qedf_ctx *qedf = (struct qedf_ctx *)cookie;
 struct qedf_skb_work *skb_work;

 if (atomic_read(&qedf->link_state) == QEDF_LINK_DOWN) {
  QEDF_INFO(&qedf->dbg_ctx, QEDF_LOG_LL2,
     "Dropping frame as link state is down.\n");
  kfree_skb(skb);
  return 0;
 }

 skb_work = kzalloc(sizeof(struct qedf_skb_work), GFP_ATOMIC);
 if (!skb_work) {
  QEDF_WARN(&(qedf->dbg_ctx), "Could not allocate skb_work so "
      "dropping frame.\n");
  kfree_skb(skb);
  return 0;
 }

 INIT_WORK(&skb_work->work, qedf_ll2_process_skb);
 skb_work->skb = skb;
 skb_work->qedf = qedf;
 queue_work(qedf->ll2_recv_wq, &skb_work->work);

 return 0;
}
