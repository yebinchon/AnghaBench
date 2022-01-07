
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct slim_val_inf {int num_bytes; scalar_t__* wbuf; int * member_3; int * member_2; int member_1; int member_0; } ;
struct slim_sched {scalar_t__ clk_state; int m_reconf; int pause_comp; } ;
struct slim_controller {int (* wakeup ) (struct slim_controller*) ;int txn_lock; int tid_idr; struct slim_sched sched; } ;
struct TYPE_4__ {int rl; int mc; } ;


 int DEFINE_SLIM_BCAST_TXN (TYPE_1__,int ,int,int ,struct slim_val_inf*) ;
 int EBUSY ;
 int EINVAL ;
 int ETIMEDOUT ;
 scalar_t__ SLIM_CLK_ACTIVE ;
 scalar_t__ SLIM_CLK_ENTERING_PAUSE ;
 scalar_t__ SLIM_CLK_PAUSED ;
 scalar_t__ SLIM_CLK_UNSPECIFIED ;
 int SLIM_LA_MANAGER ;
 int SLIM_MAX_TIDS ;
 int SLIM_MSG_MC_BEGIN_RECONFIGURATION ;
 int SLIM_MSG_MC_NEXT_PAUSE_CLOCK ;
 int SLIM_MSG_MC_RECONFIGURE_NOW ;
 int complete (int *) ;
 scalar_t__ idr_find (int *,int) ;
 int msecs_to_jiffies (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_err (char*) ;
 int slim_do_transfer (struct slim_controller*,TYPE_1__*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct slim_controller*) ;
 TYPE_1__ txn ;
 int wait_for_completion_timeout (int *,int ) ;

int slim_ctrl_clk_pause(struct slim_controller *ctrl, bool wakeup, u8 restart)
{
 int i, ret = 0;
 unsigned long flags;
 struct slim_sched *sched = &ctrl->sched;
 struct slim_val_inf msg = {0, 0, ((void*)0), ((void*)0)};

 DEFINE_SLIM_BCAST_TXN(txn, SLIM_MSG_MC_BEGIN_RECONFIGURATION,
    3, SLIM_LA_MANAGER, &msg);

 if (wakeup == 0 && restart > SLIM_CLK_UNSPECIFIED)
  return -EINVAL;

 mutex_lock(&sched->m_reconf);
 if (wakeup) {
  if (sched->clk_state == SLIM_CLK_ACTIVE) {
   mutex_unlock(&sched->m_reconf);
   return 0;
  }





  ret = wait_for_completion_timeout(&sched->pause_comp,
    msecs_to_jiffies(100));
  if (!ret) {
   mutex_unlock(&sched->m_reconf);
   pr_err("Previous clock pause did not finish");
   return -ETIMEDOUT;
  }
  ret = 0;






  if (sched->clk_state == SLIM_CLK_PAUSED && ctrl->wakeup)
   ret = ctrl->wakeup(ctrl);
  if (!ret)
   sched->clk_state = SLIM_CLK_ACTIVE;
  mutex_unlock(&sched->m_reconf);

  return ret;
 }


 if (ctrl->sched.clk_state == SLIM_CLK_PAUSED) {
  mutex_unlock(&sched->m_reconf);
  return 0;
 }

 spin_lock_irqsave(&ctrl->txn_lock, flags);
 for (i = 0; i < SLIM_MAX_TIDS; i++) {

  if (idr_find(&ctrl->tid_idr, i)) {
   spin_unlock_irqrestore(&ctrl->txn_lock, flags);
   mutex_unlock(&sched->m_reconf);
   return -EBUSY;
  }
 }
 spin_unlock_irqrestore(&ctrl->txn_lock, flags);

 sched->clk_state = SLIM_CLK_ENTERING_PAUSE;


 ret = slim_do_transfer(ctrl, &txn);
 if (ret)
  goto clk_pause_ret;

 txn.mc = SLIM_MSG_MC_NEXT_PAUSE_CLOCK;
 txn.rl = 4;
 msg.num_bytes = 1;
 msg.wbuf = &restart;
 ret = slim_do_transfer(ctrl, &txn);
 if (ret)
  goto clk_pause_ret;

 txn.mc = SLIM_MSG_MC_RECONFIGURE_NOW;
 txn.rl = 3;
 msg.num_bytes = 1;
 msg.wbuf = ((void*)0);
 ret = slim_do_transfer(ctrl, &txn);

clk_pause_ret:
 if (ret) {
  sched->clk_state = SLIM_CLK_ACTIVE;
 } else {
  sched->clk_state = SLIM_CLK_PAUSED;
  complete(&sched->pause_comp);
 }
 mutex_unlock(&sched->m_reconf);

 return ret;
}
