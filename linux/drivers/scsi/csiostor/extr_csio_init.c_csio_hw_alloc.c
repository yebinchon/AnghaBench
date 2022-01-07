
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct csio_hw {int regstart; int drv_version; struct pci_dev* pdev; } ;


 int CSIO_DRV_VERSION ;
 int GFP_KERNEL ;
 int csio_dbg (struct csio_hw*,char*,struct csio_hw*) ;
 int csio_dfs_create (struct csio_hw*) ;
 int csio_err (struct csio_hw*,char*,int ) ;
 int csio_hw_exit_workers (struct csio_hw*) ;
 scalar_t__ csio_hw_init (struct csio_hw*) ;
 int csio_hw_init_workers (struct csio_hw*) ;
 scalar_t__ csio_resource_alloc (struct csio_hw*) ;
 int csio_resource_free (struct csio_hw*) ;
 int ioremap_nocache (int ,int ) ;
 int iounmap (int ) ;
 int kfree (struct csio_hw*) ;
 struct csio_hw* kzalloc (int,int ) ;
 int pci_resource_len (struct pci_dev*,int ) ;
 int pci_resource_start (struct pci_dev*,int ) ;
 int strncpy (int ,int ,int) ;

__attribute__((used)) static struct csio_hw *csio_hw_alloc(struct pci_dev *pdev)
{
 struct csio_hw *hw;

 hw = kzalloc(sizeof(struct csio_hw), GFP_KERNEL);
 if (!hw)
  goto err;

 hw->pdev = pdev;
 strncpy(hw->drv_version, CSIO_DRV_VERSION, 32);


 if (csio_resource_alloc(hw))
  goto err_free_hw;


 hw->regstart = ioremap_nocache(pci_resource_start(pdev, 0),
           pci_resource_len(pdev, 0));
 if (!hw->regstart) {
  csio_err(hw, "Could not map BAR 0, regstart = %p\n",
    hw->regstart);
  goto err_resource_free;
 }

 csio_hw_init_workers(hw);

 if (csio_hw_init(hw))
  goto err_unmap_bar;

 csio_dfs_create(hw);

 csio_dbg(hw, "hw:%p\n", hw);

 return hw;

err_unmap_bar:
 csio_hw_exit_workers(hw);
 iounmap(hw->regstart);
err_resource_free:
 csio_resource_free(hw);
err_free_hw:
 kfree(hw);
err:
 return ((void*)0);
}
