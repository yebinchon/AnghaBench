
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct aer_err_info {size_t error_dev_num; int * dev; } ;


 size_t AER_MAX_MULTI_ERR_DEVICES ;
 int ENOSPC ;
 int pci_dev_get (struct pci_dev*) ;

__attribute__((used)) static int add_error_device(struct aer_err_info *e_info, struct pci_dev *dev)
{
 if (e_info->error_dev_num < AER_MAX_MULTI_ERR_DEVICES) {
  e_info->dev[e_info->error_dev_num] = pci_dev_get(dev);
  e_info->error_dev_num++;
  return 0;
 }
 return -ENOSPC;
}
