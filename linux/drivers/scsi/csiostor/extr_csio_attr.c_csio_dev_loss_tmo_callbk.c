
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fc_rport {scalar_t__ dd_data; } ;
struct csio_rnode {int nport_id; } ;
struct csio_lnode {int flags; int lock; int evtq_work; } ;
struct csio_hw {int flags; int lock; int evtq_work; } ;
typedef int rn ;


 int CSIO_EVT_DEV_LOSS ;
 int CSIO_HWF_FWEVT_PENDING ;
 int CSIO_INC_STATS (struct csio_lnode*,int ) ;
 scalar_t__ csio_enqueue_evt (struct csio_lnode*,int ,struct csio_rnode**,int) ;
 scalar_t__ csio_is_hw_removing (struct csio_lnode*) ;
 scalar_t__ csio_is_rnode_ready (struct csio_rnode*) ;
 int csio_ln_dbg (struct csio_lnode*,char*,struct csio_rnode*,int ,int ) ;
 struct csio_lnode* csio_lnode_to_hw (struct csio_lnode*) ;
 int csio_rn_flowid (struct csio_rnode*) ;
 struct csio_lnode* csio_rnode_to_lnode (struct csio_rnode*) ;
 int n_dev_loss_tmo ;
 int n_evt_drop ;
 int schedule_work (int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static void
csio_dev_loss_tmo_callbk(struct fc_rport *rport)
{
 struct csio_rnode *rn;
 struct csio_hw *hw;
 struct csio_lnode *ln;

 rn = *((struct csio_rnode **)rport->dd_data);
 ln = csio_rnode_to_lnode(rn);
 hw = csio_lnode_to_hw(ln);

 spin_lock_irq(&hw->lock);


 if (csio_is_hw_removing(hw) || csio_is_rnode_ready(rn))
  goto out;

 csio_ln_dbg(ln, "devloss timeout on rnode:%p portid:x%x flowid:x%x\n",
      rn, rn->nport_id, csio_rn_flowid(rn));

 CSIO_INC_STATS(ln, n_dev_loss_tmo);





 if (csio_enqueue_evt(hw, CSIO_EVT_DEV_LOSS, &rn, sizeof(rn))) {
  CSIO_INC_STATS(hw, n_evt_drop);
  goto out;
 }

 if (!(hw->flags & CSIO_HWF_FWEVT_PENDING)) {
  hw->flags |= CSIO_HWF_FWEVT_PENDING;
  spin_unlock_irq(&hw->lock);
  schedule_work(&hw->evtq_work);
  return;
 }

out:
 spin_unlock_irq(&hw->lock);
}
