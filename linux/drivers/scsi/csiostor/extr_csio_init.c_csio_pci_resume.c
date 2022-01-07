
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int dev; } ;
struct csio_lnode {int portid; } ;
struct csio_hw {int num_pports; int lock; TYPE_1__* pport; } ;
struct TYPE_2__ {int portid; } ;


 int ENODEV ;
 int csio_hw_free (struct csio_hw*) ;
 int csio_hw_stop (struct csio_hw*) ;
 int csio_lnode_init_post (struct csio_lnode*) ;
 scalar_t__ csio_lnode_start (struct csio_lnode*) ;
 int csio_lnodes_block_request (struct csio_hw*) ;
 int csio_lnodes_exit (struct csio_hw*,int ) ;
 int csio_lnodes_unblock_request (struct csio_hw*) ;
 struct csio_lnode* csio_shost_init (struct csio_hw*,int *,int,int *) ;
 int dev_err (int *,char*,int) ;
 struct csio_hw* pci_get_drvdata (struct pci_dev*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static void
csio_pci_resume(struct pci_dev *pdev)
{
 struct csio_hw *hw = pci_get_drvdata(pdev);
 struct csio_lnode *ln;
 int rv = 0;
 int i;



 for (i = 0; i < hw->num_pports; i++) {
  ln = csio_shost_init(hw, &pdev->dev, 1, ((void*)0));
  if (!ln) {
   rv = -ENODEV;
   break;
  }

  ln->portid = hw->pport[i].portid;

  spin_lock_irq(&hw->lock);
  if (csio_lnode_start(ln) != 0)
   rv = -ENODEV;
  spin_unlock_irq(&hw->lock);

  if (rv)
   break;

  csio_lnode_init_post(ln);
 }

 if (rv)
  goto err_resume_exit;

 return;

err_resume_exit:
 csio_lnodes_block_request(hw);
 spin_lock_irq(&hw->lock);
 csio_hw_stop(hw);
 spin_unlock_irq(&hw->lock);
 csio_lnodes_unblock_request(hw);
 csio_lnodes_exit(hw, 0);
 csio_hw_free(hw);
 dev_err(&pdev->dev, "resume of device failed: %d\n", rv);
}
