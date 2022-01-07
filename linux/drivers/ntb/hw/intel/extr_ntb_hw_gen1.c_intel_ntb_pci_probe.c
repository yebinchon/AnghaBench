
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pci_device_id {int dummy; } ;
struct pci_dev {int dev; } ;
struct TYPE_4__ {int * ops; } ;
struct intel_ntb_dev {TYPE_2__ ntb; TYPE_1__* reg; } ;
struct TYPE_3__ {int (* poll_link ) (struct intel_ntb_dev*) ;} ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int dev_info (int *,char*) ;
 int dev_to_node (int *) ;
 int gen3_init_dev (struct intel_ntb_dev*) ;
 int intel_ntb3_ops ;
 int intel_ntb_deinit_pci (struct intel_ntb_dev*) ;
 int intel_ntb_init_pci (struct intel_ntb_dev*,struct pci_dev*) ;
 int kfree (struct intel_ntb_dev*) ;
 struct intel_ntb_dev* kzalloc_node (int,int ,int) ;
 int ndev_deinit_debugfs (struct intel_ntb_dev*) ;
 int ndev_init_debugfs (struct intel_ntb_dev*) ;
 int ndev_init_struct (struct intel_ntb_dev*,struct pci_dev*) ;
 int ndev_reset_unsafe_flags (struct intel_ntb_dev*) ;
 int ntb_register_device (TYPE_2__*) ;
 scalar_t__ pdev_is_gen1 (struct pci_dev*) ;
 scalar_t__ pdev_is_gen3 (struct pci_dev*) ;
 int stub1 (struct intel_ntb_dev*) ;
 int xeon_deinit_dev (struct intel_ntb_dev*) ;
 int xeon_init_dev (struct intel_ntb_dev*) ;

__attribute__((used)) static int intel_ntb_pci_probe(struct pci_dev *pdev,
          const struct pci_device_id *id)
{
 struct intel_ntb_dev *ndev;
 int rc, node;

 node = dev_to_node(&pdev->dev);

 if (pdev_is_gen1(pdev)) {
  ndev = kzalloc_node(sizeof(*ndev), GFP_KERNEL, node);
  if (!ndev) {
   rc = -ENOMEM;
   goto err_ndev;
  }

  ndev_init_struct(ndev, pdev);

  rc = intel_ntb_init_pci(ndev, pdev);
  if (rc)
   goto err_init_pci;

  rc = xeon_init_dev(ndev);
  if (rc)
   goto err_init_dev;

 } else if (pdev_is_gen3(pdev)) {
  ndev = kzalloc_node(sizeof(*ndev), GFP_KERNEL, node);
  if (!ndev) {
   rc = -ENOMEM;
   goto err_ndev;
  }

  ndev_init_struct(ndev, pdev);
  ndev->ntb.ops = &intel_ntb3_ops;

  rc = intel_ntb_init_pci(ndev, pdev);
  if (rc)
   goto err_init_pci;

  rc = gen3_init_dev(ndev);
  if (rc)
   goto err_init_dev;

 } else {
  rc = -EINVAL;
  goto err_ndev;
 }

 ndev_reset_unsafe_flags(ndev);

 ndev->reg->poll_link(ndev);

 ndev_init_debugfs(ndev);

 rc = ntb_register_device(&ndev->ntb);
 if (rc)
  goto err_register;

 dev_info(&pdev->dev, "NTB device registered.\n");

 return 0;

err_register:
 ndev_deinit_debugfs(ndev);
 if (pdev_is_gen1(pdev) || pdev_is_gen3(pdev))
  xeon_deinit_dev(ndev);
err_init_dev:
 intel_ntb_deinit_pci(ndev);
err_init_pci:
 kfree(ndev);
err_ndev:
 return rc;
}
