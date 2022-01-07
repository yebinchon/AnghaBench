
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct config_field {scalar_t__ size; } ;


 int xen_pcibk_config_add_field (struct pci_dev*,struct config_field const*) ;

__attribute__((used)) static inline int xen_pcibk_config_add_fields(struct pci_dev *dev,
         const struct config_field *field)
{
 int i, err = 0;
 for (i = 0; field[i].size != 0; i++) {
  err = xen_pcibk_config_add_field(dev, &field[i]);
  if (err)
   break;
 }
 return err;
}
