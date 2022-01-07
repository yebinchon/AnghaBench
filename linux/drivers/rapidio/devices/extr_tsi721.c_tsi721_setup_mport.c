
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int release; int * parent; } ;
struct rio_mport {int phys_efptr; int phys_rmap; scalar_t__ host_deviceid; int name; int * riores; int dbells; TYPE_1__ dev; void* priv; scalar_t__ sys_size; scalar_t__ index; int * ops; } ;
struct tsi721_device {scalar_t__ regs; int flags; struct rio_mport mport; struct pci_dev* pdev; } ;
struct pci_dev {int irq; int dev; } ;


 int INIT_LIST_HEAD (int *) ;
 int MPORT ;
 size_t RIO_DOORBELL_RESOURCE ;
 size_t RIO_INB_MBOX_RESOURCE ;
 int RIO_MAX_MPORT_NAME ;
 size_t RIO_OUTB_MBOX_RESOURCE ;
 scalar_t__ RIO_PORT_GEN_CTL_CSR ;
 int RIO_PORT_GEN_DISCOVERED ;
 int RIO_PORT_GEN_HOST ;
 int RIO_PORT_GEN_MASTER ;
 scalar_t__ TSI721_DEVCTL ;
 int TSI721_DEVCTL_SRBOOT_CMPL ;
 int TSI721_USING_MSI ;
 int TSI721_USING_MSIX ;
 char* dev_driver_string (int *) ;
 char* dev_name (int *) ;
 int ioread32 (scalar_t__) ;
 int iowrite32 (int,scalar_t__) ;
 int pci_enable_msi (struct pci_dev*) ;
 int rio_init_dbell_res (int *,int ,int) ;
 int rio_init_mbox_res (int *,int ,int) ;
 int rio_mport_initialize (struct rio_mport*) ;
 int rio_register_mport (struct rio_mport*) ;
 int snprintf (int ,int ,char*,char*,char*) ;
 int tsi721_enable_msix (struct tsi721_device*) ;
 int tsi721_free_irq (struct tsi721_device*) ;
 int tsi721_mport_release ;
 int tsi721_register_dma (struct tsi721_device*) ;
 int tsi721_request_irq (struct tsi721_device*) ;
 int tsi721_rio_ops ;
 int tsi721_unregister_dma (struct tsi721_device*) ;
 int tsi_debug (int ,int *,char*) ;
 int tsi_err (int *,char*,int ,int) ;

__attribute__((used)) static int tsi721_setup_mport(struct tsi721_device *priv)
{
 struct pci_dev *pdev = priv->pdev;
 int err = 0;
 struct rio_mport *mport = &priv->mport;

 err = rio_mport_initialize(mport);
 if (err)
  return err;

 mport->ops = &tsi721_rio_ops;
 mport->index = 0;
 mport->sys_size = 0;
 mport->priv = (void *)priv;
 mport->phys_efptr = 0x100;
 mport->phys_rmap = 1;
 mport->dev.parent = &pdev->dev;
 mport->dev.release = tsi721_mport_release;

 INIT_LIST_HEAD(&mport->dbells);

 rio_init_dbell_res(&mport->riores[RIO_DOORBELL_RESOURCE], 0, 0xffff);
 rio_init_mbox_res(&mport->riores[RIO_INB_MBOX_RESOURCE], 0, 3);
 rio_init_mbox_res(&mport->riores[RIO_OUTB_MBOX_RESOURCE], 0, 3);
 snprintf(mport->name, RIO_MAX_MPORT_NAME, "%s(%s)",
   dev_driver_string(&pdev->dev), dev_name(&pdev->dev));
 err = tsi721_request_irq(priv);

 if (err) {
  tsi_err(&pdev->dev, "Unable to get PCI IRQ %02X (err=0x%x)",
   pdev->irq, err);
  return err;
 }







 iowrite32(ioread32(priv->regs + TSI721_DEVCTL) |
    TSI721_DEVCTL_SRBOOT_CMPL,
    priv->regs + TSI721_DEVCTL);

 if (mport->host_deviceid >= 0)
  iowrite32(RIO_PORT_GEN_HOST | RIO_PORT_GEN_MASTER |
     RIO_PORT_GEN_DISCOVERED,
     priv->regs + (0x100 + RIO_PORT_GEN_CTL_CSR));
 else
  iowrite32(0, priv->regs + (0x100 + RIO_PORT_GEN_CTL_CSR));

 err = rio_register_mport(mport);
 if (err) {
  tsi721_unregister_dma(priv);
  goto err_exit;
 }

 return 0;

err_exit:
 tsi721_free_irq(priv);
 return err;
}
