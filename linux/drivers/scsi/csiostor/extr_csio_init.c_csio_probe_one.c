
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_device_id {int dummy; } ;
struct pci_dev {int device; int dev; } ;
struct csio_lnode {int portid; } ;
struct csio_hw {int num_pports; int lock; TYPE_1__* pport; int fwrev; int fwrev_str; int flags; } ;
struct TYPE_2__ {int portid; } ;


 int CSIO_HWF_ROOT_NO_RELAXED_ORDERING ;
 int CSIO_HW_CHIP_MASK ;
 int EINVAL ;
 int ENODEV ;
 int FW_HDR_FW_VER_BUILD_G (int ) ;
 int FW_HDR_FW_VER_MAJOR_G (int ) ;
 int FW_HDR_FW_VER_MICRO_G (int ) ;
 int FW_HDR_FW_VER_MINOR_G (int ) ;
 struct csio_hw* csio_hw_alloc (struct pci_dev*) ;
 int csio_hw_free (struct csio_hw*) ;
 int csio_hw_start (struct csio_hw*) ;
 int csio_hw_stop (struct csio_hw*) ;
 int csio_is_t5 (int) ;
 int csio_is_t6 (int) ;
 int csio_lnode_init_post (struct csio_lnode*) ;
 scalar_t__ csio_lnode_start (struct csio_lnode*) ;
 int csio_lnodes_block_request (struct csio_hw*) ;
 int csio_lnodes_exit (struct csio_hw*,int ) ;
 int csio_lnodes_unblock_request (struct csio_hw*) ;
 int csio_pci_exit (struct pci_dev*,int*) ;
 int csio_pci_init (struct pci_dev*,int*) ;
 struct csio_lnode* csio_shost_init (struct csio_hw*,int *,int,int *) ;
 int dev_err (int *,char*,...) ;
 int pci_set_drvdata (struct pci_dev*,struct csio_hw*) ;
 int pcie_relaxed_ordering_enabled (struct pci_dev*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int sprintf (int ,char*,int,int,int,int) ;

__attribute__((used)) static int csio_probe_one(struct pci_dev *pdev, const struct pci_device_id *id)
{
 int rv;
 int bars;
 int i;
 struct csio_hw *hw;
 struct csio_lnode *ln;


 if (!csio_is_t5((pdev->device & CSIO_HW_CHIP_MASK)) &&
     !csio_is_t6((pdev->device & CSIO_HW_CHIP_MASK)))
  return -ENODEV;

 rv = csio_pci_init(pdev, &bars);
 if (rv)
  goto err;

 hw = csio_hw_alloc(pdev);
 if (!hw) {
  rv = -ENODEV;
  goto err_pci_exit;
 }

 if (!pcie_relaxed_ordering_enabled(pdev))
  hw->flags |= CSIO_HWF_ROOT_NO_RELAXED_ORDERING;

 pci_set_drvdata(pdev, hw);

 rv = csio_hw_start(hw);
 if (rv) {
  if (rv == -EINVAL) {
   dev_err(&pdev->dev,
    "Failed to start FW, continuing in debug mode.\n");
   return 0;
  }
  goto err_lnode_exit;
 }

 sprintf(hw->fwrev_str, "%u.%u.%u.%u\n",
      FW_HDR_FW_VER_MAJOR_G(hw->fwrev),
      FW_HDR_FW_VER_MINOR_G(hw->fwrev),
      FW_HDR_FW_VER_MICRO_G(hw->fwrev),
      FW_HDR_FW_VER_BUILD_G(hw->fwrev));

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
  goto err_lnode_exit;

 return 0;

err_lnode_exit:
 csio_lnodes_block_request(hw);
 spin_lock_irq(&hw->lock);
 csio_hw_stop(hw);
 spin_unlock_irq(&hw->lock);
 csio_lnodes_unblock_request(hw);
 csio_lnodes_exit(hw, 0);
 csio_hw_free(hw);
err_pci_exit:
 csio_pci_exit(pdev, &bars);
err:
 dev_err(&pdev->dev, "probe of device failed: %d\n", rv);
 return rv;
}
