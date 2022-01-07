
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct csio_hw {int pdev; } ;
typedef int irqreturn_t ;


 int CSIO_INC_STATS (struct csio_hw*,int ) ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int csio_fwevt_handler (struct csio_hw*) ;
 int n_pcich_offline ;
 int pci_channel_offline (int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static irqreturn_t
csio_fwevt_isr(int irq, void *dev_id)
{
 struct csio_hw *hw = (struct csio_hw *) dev_id;

 if (unlikely(!hw))
  return IRQ_NONE;

 if (unlikely(pci_channel_offline(hw->pdev))) {
  CSIO_INC_STATS(hw, n_pcich_offline);
  return IRQ_NONE;
 }

 csio_fwevt_handler(hw);

 return IRQ_HANDLED;
}
