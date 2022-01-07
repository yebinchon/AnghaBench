
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wd719x_host_param {int dummy; } ;
struct wd719x {int fw_size; TYPE_1__* pdev; int * params; int params_phys; int * hash_virt; int hash_phys; int * fw_virt; int fw_phys; int active_scbs; } ;
struct TYPE_2__ {int irq; int dev; } ;


 int WARN_ON_ONCE (int) ;
 int WD719X_CMD_SLEEP ;
 int WD719X_HASH_TABLE_SIZE ;
 int WD719X_PCI_MODE_SELECT ;
 int WD719X_WAIT_FOR_RISC ;
 int dev_warn (int *,char*) ;
 int dma_free_coherent (int *,int,int *,int ) ;
 int free_irq (int ,struct wd719x*) ;
 int list_empty (int *) ;
 scalar_t__ wd719x_direct_cmd (struct wd719x*,int ,int ,int ,int ,int ,int ) ;
 int wd719x_writeb (struct wd719x*,int ,int ) ;

__attribute__((used)) static void wd719x_destroy(struct wd719x *wd)
{

 if (wd719x_direct_cmd(wd, WD719X_CMD_SLEEP, 0, 0, 0, 0,
         WD719X_WAIT_FOR_RISC))
  dev_warn(&wd->pdev->dev, "RISC sleep command failed\n");

 wd719x_writeb(wd, WD719X_PCI_MODE_SELECT, 0);

 WARN_ON_ONCE(!list_empty(&wd->active_scbs));


 dma_free_coherent(&wd->pdev->dev, wd->fw_size, wd->fw_virt,
     wd->fw_phys);
 wd->fw_virt = ((void*)0);
 dma_free_coherent(&wd->pdev->dev, WD719X_HASH_TABLE_SIZE, wd->hash_virt,
     wd->hash_phys);
 wd->hash_virt = ((void*)0);
 dma_free_coherent(&wd->pdev->dev, sizeof(struct wd719x_host_param),
     wd->params, wd->params_phys);
 wd->params = ((void*)0);
 free_irq(wd->pdev->irq, wd);
}
