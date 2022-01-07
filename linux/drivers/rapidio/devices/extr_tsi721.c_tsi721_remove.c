
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tsi721_device {int flags; int pdev; scalar_t__ odb_base; scalar_t__ regs; int mport; } ;
struct pci_dev {int dev; } ;


 int EXIT ;
 int TSI721_USING_MSI ;
 int TSI721_USING_MSIX ;
 int flush_scheduled_work () ;
 int iounmap (scalar_t__) ;
 int kfree (struct tsi721_device*) ;
 int pci_clear_master (struct pci_dev*) ;
 int pci_disable_device (struct pci_dev*) ;
 int pci_disable_msi (int ) ;
 int pci_disable_msix (int ) ;
 struct tsi721_device* pci_get_drvdata (struct pci_dev*) ;
 int pci_release_regions (struct pci_dev*) ;
 int pci_set_drvdata (struct pci_dev*,int *) ;
 int rio_unregister_mport (int *) ;
 int tsi721_bdma_maint_free (struct tsi721_device*) ;
 int tsi721_close_sr2pc_mapping (struct tsi721_device*) ;
 int tsi721_disable_ints (struct tsi721_device*) ;
 int tsi721_doorbell_free (struct tsi721_device*) ;
 int tsi721_free_irq (struct tsi721_device*) ;
 int tsi721_port_write_free (struct tsi721_device*) ;
 int tsi721_unregister_dma (struct tsi721_device*) ;
 int tsi_debug (int ,int *,char*) ;

__attribute__((used)) static void tsi721_remove(struct pci_dev *pdev)
{
 struct tsi721_device *priv = pci_get_drvdata(pdev);

 tsi_debug(EXIT, &pdev->dev, "enter");

 tsi721_disable_ints(priv);
 tsi721_free_irq(priv);
 flush_scheduled_work();
 rio_unregister_mport(&priv->mport);

 tsi721_unregister_dma(priv);
 tsi721_bdma_maint_free(priv);
 tsi721_doorbell_free(priv);
 tsi721_port_write_free(priv);
 tsi721_close_sr2pc_mapping(priv);

 if (priv->regs)
  iounmap(priv->regs);
 if (priv->odb_base)
  iounmap(priv->odb_base);






 pci_release_regions(pdev);
 pci_clear_master(pdev);
 pci_disable_device(pdev);
 pci_set_drvdata(pdev, ((void*)0));
 kfree(priv);
 tsi_debug(EXIT, &pdev->dev, "exit");
}
