
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int dev; int irq; } ;
struct TYPE_2__ {struct pci_dev* pdev; } ;
struct amd_ntb_dev {int entry; int num; int db_count; int msix_vec_count; struct amd_ntb_dev* vec; struct amd_ntb_dev* msix; int vector; struct amd_ntb_dev* ndev; int db_valid_mask; int db_mask; TYPE_1__ ntb; } ;


 int GFP_KERNEL ;
 int IRQF_SHARED ;
 int dev_dbg (int *,char*) ;
 int dev_to_node (int *) ;
 int free_irq (int ,struct amd_ntb_dev*) ;
 void* kcalloc_node (int,int,int ,int) ;
 int kfree (struct amd_ntb_dev*) ;
 int ndev_irq_isr ;
 int ndev_vec_isr ;
 int pci_disable_msi (struct pci_dev*) ;
 int pci_disable_msix (struct pci_dev*) ;
 int pci_enable_msi (struct pci_dev*) ;
 int pci_enable_msix_range (struct pci_dev*,struct amd_ntb_dev*,int,int) ;
 int pci_intx (struct pci_dev*,int) ;
 int request_irq (int ,int ,int ,char*,struct amd_ntb_dev*) ;

__attribute__((used)) static int ndev_init_isr(struct amd_ntb_dev *ndev,
    int msix_min, int msix_max)
{
 struct pci_dev *pdev;
 int rc, i, msix_count, node;

 pdev = ndev->ntb.pdev;

 node = dev_to_node(&pdev->dev);

 ndev->db_mask = ndev->db_valid_mask;


 ndev->vec = kcalloc_node(msix_max, sizeof(*ndev->vec),
     GFP_KERNEL, node);
 if (!ndev->vec)
  goto err_msix_vec_alloc;

 ndev->msix = kcalloc_node(msix_max, sizeof(*ndev->msix),
      GFP_KERNEL, node);
 if (!ndev->msix)
  goto err_msix_alloc;

 for (i = 0; i < msix_max; ++i)
  ndev->msix[i].entry = i;

 msix_count = pci_enable_msix_range(pdev, ndev->msix,
        msix_min, msix_max);
 if (msix_count < 0)
  goto err_msix_enable;




 if (msix_count < msix_min) {
  pci_disable_msix(pdev);
  goto err_msix_enable;
 }

 for (i = 0; i < msix_count; ++i) {
  ndev->vec[i].ndev = ndev;
  ndev->vec[i].num = i;
  rc = request_irq(ndev->msix[i].vector, ndev_vec_isr, 0,
     "ndev_vec_isr", &ndev->vec[i]);
  if (rc)
   goto err_msix_request;
 }

 dev_dbg(&pdev->dev, "Using msix interrupts\n");
 ndev->db_count = msix_min;
 ndev->msix_vec_count = msix_max;
 return 0;

err_msix_request:
 while (i-- > 0)
  free_irq(ndev->msix[i].vector, &ndev->vec[i]);
 pci_disable_msix(pdev);
err_msix_enable:
 kfree(ndev->msix);
err_msix_alloc:
 kfree(ndev->vec);
err_msix_vec_alloc:
 ndev->msix = ((void*)0);
 ndev->vec = ((void*)0);


 rc = pci_enable_msi(pdev);
 if (rc)
  goto err_msi_enable;

 rc = request_irq(pdev->irq, ndev_irq_isr, 0,
    "ndev_irq_isr", ndev);
 if (rc)
  goto err_msi_request;

 dev_dbg(&pdev->dev, "Using msi interrupts\n");
 ndev->db_count = 1;
 ndev->msix_vec_count = 1;
 return 0;

err_msi_request:
 pci_disable_msi(pdev);
err_msi_enable:


 pci_intx(pdev, 1);

 rc = request_irq(pdev->irq, ndev_irq_isr, IRQF_SHARED,
    "ndev_irq_isr", ndev);
 if (rc)
  goto err_intx_request;

 dev_dbg(&pdev->dev, "Using intx interrupts\n");
 ndev->db_count = 1;
 ndev->msix_vec_count = 1;
 return 0;

err_intx_request:
 return rc;
}
