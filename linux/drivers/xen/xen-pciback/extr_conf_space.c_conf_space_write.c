
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct pci_dev {int dummy; } ;
struct config_field_entry {int data; struct config_field* field; } ;
struct TYPE_7__ {int (* write ) (struct pci_dev*,int,int ,int ) ;} ;
struct TYPE_6__ {int (* write ) (struct pci_dev*,int,int ,int ) ;} ;
struct TYPE_5__ {int (* write ) (struct pci_dev*,int,int ,int ) ;} ;
struct TYPE_8__ {TYPE_3__ dw; TYPE_2__ w; TYPE_1__ b; } ;
struct config_field {int size; TYPE_4__ u; } ;


 int stub1 (struct pci_dev*,int,int ,int ) ;
 int stub2 (struct pci_dev*,int,int ,int ) ;
 int stub3 (struct pci_dev*,int,int ,int ) ;

__attribute__((used)) static int conf_space_write(struct pci_dev *dev,
       const struct config_field_entry *entry,
       int offset, u32 value)
{
 int ret = 0;
 const struct config_field *field = entry->field;

 switch (field->size) {
 case 1:
  if (field->u.b.write)
   ret = field->u.b.write(dev, offset, (u8) value,
            entry->data);
  break;
 case 2:
  if (field->u.w.write)
   ret = field->u.w.write(dev, offset, (u16) value,
            entry->data);
  break;
 case 4:
  if (field->u.dw.write)
   ret = field->u.dw.write(dev, offset, value,
      entry->data);
  break;
 }
 return ret;
}
