
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct csio_q {scalar_t__ owner; } ;
struct csio_hw {int pdev; } ;
typedef int irqreturn_t ;


 int CSIO_INC_STATS (struct csio_hw*,int ) ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int csio_scsi_isr_handler (struct csio_q*) ;
 int n_pcich_offline ;
 int pci_channel_offline (int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static irqreturn_t
csio_scsi_isr(int irq, void *dev_id)
{
 struct csio_q *iq = (struct csio_q *) dev_id;
 struct csio_hw *hw;

 if (unlikely(!iq))
  return IRQ_NONE;

 hw = (struct csio_hw *)iq->owner;

 if (unlikely(pci_channel_offline(hw->pdev))) {
  CSIO_INC_STATS(hw, n_pcich_offline);
  return IRQ_NONE;
 }

 csio_scsi_isr_handler(iq);

 return IRQ_HANDLED;
}
