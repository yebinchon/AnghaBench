
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int dev; } ;
struct nvme_ctrl {int dummy; } ;
struct TYPE_2__ {int dev; } ;


 char* dev_name (int *) ;
 int snprintf (char*,int,char*,char*) ;
 TYPE_1__* to_nvme_dev (struct nvme_ctrl*) ;
 struct pci_dev* to_pci_dev (int ) ;

__attribute__((used)) static int nvme_pci_get_address(struct nvme_ctrl *ctrl, char *buf, int size)
{
 struct pci_dev *pdev = to_pci_dev(to_nvme_dev(ctrl)->dev);

 return snprintf(buf, size, "%s", dev_name(&pdev->dev));
}
