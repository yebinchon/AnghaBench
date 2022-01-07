
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int devt; } ;
struct switchtec_dev {TYPE_2__ dev; int cdev; scalar_t__ dma_mrpc; TYPE_1__* mmio_part_cfg; } ;
struct pci_device_id {int dummy; } ;
struct pci_dev {int class; } ;
struct TYPE_6__ {int mrpc_comp_hdr; } ;


 scalar_t__ IS_ERR (struct switchtec_dev*) ;
 int MINOR (int ) ;
 int PCI_CLASS_BRIDGE_OTHER ;
 int PTR_ERR (struct switchtec_dev*) ;
 int SWITCHTEC_EVENT_CLEAR ;
 int SWITCHTEC_EVENT_EN_IRQ ;
 int cdev_device_add (int *,TYPE_2__*) ;
 int dev_err (TYPE_2__*,char*) ;
 int dev_info (TYPE_2__*,char*) ;
 int enable_dma_mrpc (struct switchtec_dev*) ;
 int enable_link_state_events (struct switchtec_dev*) ;
 int ida_simple_remove (int *,int ) ;
 int iowrite32 (int,int *) ;
 int put_device (TYPE_2__*) ;
 int request_module_nowait (char*) ;
 struct switchtec_dev* stdev_create (struct pci_dev*) ;
 int stdev_kill (struct switchtec_dev*) ;
 int switchtec_init_isr (struct switchtec_dev*) ;
 int switchtec_init_pci (struct switchtec_dev*,struct pci_dev*) ;
 int switchtec_minor_ida ;

__attribute__((used)) static int switchtec_pci_probe(struct pci_dev *pdev,
          const struct pci_device_id *id)
{
 struct switchtec_dev *stdev;
 int rc;

 if (pdev->class == (PCI_CLASS_BRIDGE_OTHER << 8))
  request_module_nowait("ntb_hw_switchtec");

 stdev = stdev_create(pdev);
 if (IS_ERR(stdev))
  return PTR_ERR(stdev);

 rc = switchtec_init_pci(stdev, pdev);
 if (rc)
  goto err_put;

 rc = switchtec_init_isr(stdev);
 if (rc) {
  dev_err(&stdev->dev, "failed to init isr.\n");
  goto err_put;
 }

 iowrite32(SWITCHTEC_EVENT_CLEAR |
    SWITCHTEC_EVENT_EN_IRQ,
    &stdev->mmio_part_cfg->mrpc_comp_hdr);
 enable_link_state_events(stdev);

 if (stdev->dma_mrpc)
  enable_dma_mrpc(stdev);

 rc = cdev_device_add(&stdev->cdev, &stdev->dev);
 if (rc)
  goto err_devadd;

 dev_info(&stdev->dev, "Management device registered.\n");

 return 0;

err_devadd:
 stdev_kill(stdev);
err_put:
 ida_simple_remove(&switchtec_minor_ida, MINOR(stdev->dev.devt));
 put_device(&stdev->dev);
 return rc;
}
