
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct csio_q {int dummy; } ;
struct csio_hw {scalar_t__ intr_mode; int flags; int lock; int evtq_work; int intr_iq_idx; int pdev; } ;
typedef int irqreturn_t ;


 int CSIO_DB_ASSERT (struct csio_q*) ;
 int CSIO_HWF_FWEVT_PENDING ;
 scalar_t__ CSIO_IM_INTX ;
 int CSIO_INC_STATS (struct csio_hw*,int ) ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int MYPF_REG (int ) ;
 int PCIE_PF_CLI_A ;
 struct csio_q* csio_get_q (struct csio_hw*,int ) ;
 scalar_t__ csio_hw_slow_intr_handler (struct csio_hw*) ;
 int csio_mb_isr_handler (struct csio_hw*) ;
 scalar_t__ csio_wr_process_iq (struct csio_hw*,struct csio_q*,int *,int *) ;
 int csio_wr_reg32 (struct csio_hw*,int ,int ) ;
 scalar_t__ likely (int) ;
 int n_pcich_offline ;
 int pci_channel_offline (int ) ;
 int schedule_work (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static irqreturn_t
csio_fcoe_isr(int irq, void *dev_id)
{
 struct csio_hw *hw = (struct csio_hw *) dev_id;
 struct csio_q *intx_q = ((void*)0);
 int rv;
 irqreturn_t ret = IRQ_NONE;
 unsigned long flags;

 if (unlikely(!hw))
  return IRQ_NONE;

 if (unlikely(pci_channel_offline(hw->pdev))) {
  CSIO_INC_STATS(hw, n_pcich_offline);
  return IRQ_NONE;
 }


 if (hw->intr_mode == CSIO_IM_INTX)
  csio_wr_reg32(hw, 0, MYPF_REG(PCIE_PF_CLI_A));





 if (csio_hw_slow_intr_handler(hw))
  ret = IRQ_HANDLED;


 intx_q = csio_get_q(hw, hw->intr_iq_idx);

 CSIO_DB_ASSERT(intx_q);


 if (likely(csio_wr_process_iq(hw, intx_q, ((void*)0), ((void*)0)) == 0))
  ret = IRQ_HANDLED;

 spin_lock_irqsave(&hw->lock, flags);
 rv = csio_mb_isr_handler(hw);
 if (rv == 0 && !(hw->flags & CSIO_HWF_FWEVT_PENDING)) {
  hw->flags |= CSIO_HWF_FWEVT_PENDING;
  spin_unlock_irqrestore(&hw->lock, flags);
  schedule_work(&hw->evtq_work);
  return IRQ_HANDLED;
 }
 spin_unlock_irqrestore(&hw->lock, flags);

 return ret;
}
