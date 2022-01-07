
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct csio_hw {int lock; } ;


 int IORESOURCE_MEM ;
 int csio_hw_free (struct csio_hw*) ;
 int csio_hw_stop (struct csio_hw*) ;
 int csio_lnodes_block_request (struct csio_hw*) ;
 int csio_lnodes_exit (struct csio_hw*,int ) ;
 int csio_lnodes_unblock_request (struct csio_hw*) ;
 int csio_pci_exit (struct pci_dev*,int*) ;
 struct csio_hw* pci_get_drvdata (struct pci_dev*) ;
 int pci_select_bars (struct pci_dev*,int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static void csio_remove_one(struct pci_dev *pdev)
{
 struct csio_hw *hw = pci_get_drvdata(pdev);
 int bars = pci_select_bars(pdev, IORESOURCE_MEM);

 csio_lnodes_block_request(hw);
 spin_lock_irq(&hw->lock);





 csio_hw_stop(hw);
 spin_unlock_irq(&hw->lock);
 csio_lnodes_unblock_request(hw);

 csio_lnodes_exit(hw, 0);
 csio_hw_free(hw);
 csio_pci_exit(pdev, &bars);
}
