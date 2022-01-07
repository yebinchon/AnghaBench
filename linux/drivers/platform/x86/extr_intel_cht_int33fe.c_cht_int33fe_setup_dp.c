
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {scalar_t__ vendor; int dev; } ;
struct fwnode_handle {int secondary; } ;
struct cht_int33fe_data {TYPE_1__* dp; } ;
struct TYPE_2__ {struct fwnode_handle* secondary; } ;


 int ENODEV ;
 int ERR_PTR (int) ;
 size_t INT33FE_NODE_DISPLAYPORT ;
 int PCI_CLASS_DISPLAY_VGA ;
 scalar_t__ PCI_VENDOR_ID_INTEL ;
 TYPE_1__* device_get_named_child_node (int *,char*) ;
 int * nodes ;
 int pci_dev_put (struct pci_dev*) ;
 struct pci_dev* pci_get_class (int,int *) ;
 struct fwnode_handle* software_node_fwnode (int *) ;

__attribute__((used)) static int cht_int33fe_setup_dp(struct cht_int33fe_data *data)
{
 struct fwnode_handle *fwnode;
 struct pci_dev *pdev;

 fwnode = software_node_fwnode(&nodes[INT33FE_NODE_DISPLAYPORT]);
 if (!fwnode)
  return -ENODEV;


 pdev = pci_get_class(PCI_CLASS_DISPLAY_VGA << 8, ((void*)0));
 if (!pdev || pdev->vendor != PCI_VENDOR_ID_INTEL) {
  pci_dev_put(pdev);
  return -ENODEV;
 }


 data->dp = device_get_named_child_node(&pdev->dev, "DD02");
 pci_dev_put(pdev);
 if (!data->dp)
  return -ENODEV;

 fwnode->secondary = ERR_PTR(-ENODEV);
 data->dp->secondary = fwnode;

 return 0;
}
