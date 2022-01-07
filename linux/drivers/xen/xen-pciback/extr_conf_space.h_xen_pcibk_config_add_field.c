
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct config_field {int dummy; } ;


 int xen_pcibk_config_add_field_offset (struct pci_dev*,struct config_field const*,int ) ;

__attribute__((used)) static inline int xen_pcibk_config_add_field(struct pci_dev *dev,
        const struct config_field *field)
{
 return xen_pcibk_config_add_field_offset(dev, field, 0);
}
