
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_device_id {int dummy; } ;
struct pci_dev {int shpc_managed; } ;
struct controller {TYPE_1__* hpc_ops; int slot_list; } ;
struct TYPE_2__ {int (* release_ctlr ) (struct controller*) ;} ;


 int ENODEV ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ acpi_get_hp_hw_control_from_firmware (struct pci_dev*) ;
 int cleanup_slots (struct controller*) ;
 int ctrl_dbg (struct controller*,char*) ;
 int ctrl_err (struct controller*,char*) ;
 int init_slots (struct controller*) ;
 int kfree (struct controller*) ;
 struct controller* kzalloc (int,int ) ;
 int pci_set_drvdata (struct pci_dev*,struct controller*) ;
 int shpc_capable (struct pci_dev*) ;
 int shpc_init (struct controller*,struct pci_dev*) ;
 int shpchp_create_ctrl_files (struct controller*) ;
 int stub1 (struct controller*) ;

__attribute__((used)) static int shpc_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
{
 int rc;
 struct controller *ctrl;

 if (!shpc_capable(pdev))
  return -ENODEV;

 if (acpi_get_hp_hw_control_from_firmware(pdev))
  return -ENODEV;

 ctrl = kzalloc(sizeof(*ctrl), GFP_KERNEL);
 if (!ctrl)
  goto err_out_none;

 INIT_LIST_HEAD(&ctrl->slot_list);

 rc = shpc_init(ctrl, pdev);
 if (rc) {
  ctrl_dbg(ctrl, "Controller initialization failed\n");
  goto err_out_free_ctrl;
 }

 pci_set_drvdata(pdev, ctrl);


 rc = init_slots(ctrl);
 if (rc) {
  ctrl_err(ctrl, "Slot initialization failed\n");
  goto err_out_release_ctlr;
 }

 rc = shpchp_create_ctrl_files(ctrl);
 if (rc)
  goto err_cleanup_slots;

 pdev->shpc_managed = 1;
 return 0;

err_cleanup_slots:
 cleanup_slots(ctrl);
err_out_release_ctlr:
 ctrl->hpc_ops->release_ctlr(ctrl);
err_out_free_ctrl:
 kfree(ctrl);
err_out_none:
 return -ENODEV;
}
