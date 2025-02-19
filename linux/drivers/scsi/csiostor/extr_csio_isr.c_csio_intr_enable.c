
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct csio_hw {scalar_t__ intr_mode; int flags; scalar_t__ cfg_niq; scalar_t__ num_sqsets; int pdev; } ;


 int CSIO_EXTRA_MSI_IQS ;
 int CSIO_HWF_HOST_INTR_ENABLED ;
 int CSIO_HWF_USING_SOFT_PARAMS ;
 scalar_t__ CSIO_IM_INTX ;
 scalar_t__ CSIO_IM_MSI ;
 scalar_t__ CSIO_IM_MSIX ;
 scalar_t__ CSIO_IM_NONE ;
 int csio_dbg (struct csio_hw*,char*,char*) ;
 int csio_enable_msix (struct csio_hw*) ;
 int csio_is_hw_master (struct csio_hw*) ;
 int csio_msi ;
 int csio_reduce_sqsets (struct csio_hw*,char*) ;
 int pci_enable_msi (int ) ;

void
csio_intr_enable(struct csio_hw *hw)
{
 hw->intr_mode = CSIO_IM_NONE;
 hw->flags &= ~CSIO_HWF_HOST_INTR_ENABLED;


 if ((csio_msi == 2) && !csio_enable_msix(hw))
  hw->intr_mode = CSIO_IM_MSIX;
 else {

  if (hw->flags & CSIO_HWF_USING_SOFT_PARAMS ||
   !csio_is_hw_master(hw)) {
   int extra = CSIO_EXTRA_MSI_IQS;

   if (hw->cfg_niq < (hw->num_sqsets + extra)) {
    csio_dbg(hw, "Reducing sqsets to %d\n",
      hw->cfg_niq - extra);
    csio_reduce_sqsets(hw, hw->cfg_niq - extra);
   }
  }

  if ((csio_msi == 1) && !pci_enable_msi(hw->pdev))
   hw->intr_mode = CSIO_IM_MSI;
  else
   hw->intr_mode = CSIO_IM_INTX;
 }

 csio_dbg(hw, "Using %s interrupt mode.\n",
  (hw->intr_mode == CSIO_IM_MSIX) ? "MSIX" :
  ((hw->intr_mode == CSIO_IM_MSI) ? "MSI" : "INTx"));
}
