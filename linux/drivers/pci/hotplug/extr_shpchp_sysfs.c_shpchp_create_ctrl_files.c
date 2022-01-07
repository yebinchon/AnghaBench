
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct controller {TYPE_1__* pci_dev; } ;
struct TYPE_2__ {int dev; } ;


 int dev_attr_ctrl ;
 int device_create_file (int *,int *) ;

int shpchp_create_ctrl_files(struct controller *ctrl)
{
 return device_create_file(&ctrl->pci_dev->dev, &dev_attr_ctrl);
}
