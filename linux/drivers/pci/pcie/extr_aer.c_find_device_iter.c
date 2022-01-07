
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct aer_err_info {int multi_error_valid; } ;


 scalar_t__ add_error_device (struct aer_err_info*,struct pci_dev*) ;
 scalar_t__ is_error_source (struct pci_dev*,struct aer_err_info*) ;

__attribute__((used)) static int find_device_iter(struct pci_dev *dev, void *data)
{
 struct aer_err_info *e_info = (struct aer_err_info *)data;

 if (is_error_source(dev, e_info)) {

  if (add_error_device(e_info, dev)) {


   return 1;
  }


  if (!e_info->multi_error_valid)
   return 1;
 }
 return 0;
}
