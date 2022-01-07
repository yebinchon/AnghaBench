
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct pci_dev {int dummy; } ;
struct TYPE_6__ {int write; int read; } ;
struct TYPE_5__ {int write; int read; } ;
struct TYPE_7__ {int write; int read; } ;
struct TYPE_8__ {TYPE_2__ dw; TYPE_1__ w; TYPE_3__ b; } ;
struct config_field {int size; TYPE_4__ u; } ;


 int EINVAL ;
 int xen_pcibk_config_add_field (struct pci_dev*,struct config_field*) ;
 int xen_pcibk_read_config_byte ;
 int xen_pcibk_read_config_dword ;
 int xen_pcibk_read_config_word ;
 int xen_pcibk_write_config_byte ;
 int xen_pcibk_write_config_dword ;
 int xen_pcibk_write_config_word ;

int xen_pcibk_config_quirks_add_field(struct pci_dev *dev, struct config_field
        *field)
{
 int err = 0;

 switch (field->size) {
 case 1:
  field->u.b.read = xen_pcibk_read_config_byte;
  field->u.b.write = xen_pcibk_write_config_byte;
  break;
 case 2:
  field->u.w.read = xen_pcibk_read_config_word;
  field->u.w.write = xen_pcibk_write_config_word;
  break;
 case 4:
  field->u.dw.read = xen_pcibk_read_config_dword;
  field->u.dw.write = xen_pcibk_write_config_dword;
  break;
 default:
  err = -EINVAL;
  goto out;
 }

 xen_pcibk_config_add_field(dev, field);

out:
 return err;
}
