
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct attribute {int dummy; } ;
struct TYPE_14__ {struct attribute attr; } ;
struct TYPE_13__ {struct attribute attr; } ;
struct TYPE_12__ {struct attribute attr; } ;
struct TYPE_11__ {struct attribute attr; } ;
struct TYPE_8__ {struct attribute attr; } ;
struct TYPE_10__ {TYPE_1__ attr; } ;
struct TYPE_9__ {struct attribute** attrs; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 TYPE_7__ dev_attr_attach ;
 TYPE_6__ dev_attr_detach ;
 TYPE_5__ dev_attr_nports ;
 TYPE_4__ dev_attr_usbip_debug ;
 int init_status_attrs () ;
 struct attribute** kcalloc (int,int,int ) ;
 int kfree (struct attribute**) ;
 TYPE_3__* status_attrs ;
 TYPE_2__ vhci_attr_group ;
 int vhci_num_controllers ;

int vhci_init_attr_group(void)
{
 struct attribute **attrs;
 int ret, i;

 attrs = kcalloc((vhci_num_controllers + 5), sizeof(struct attribute *),
   GFP_KERNEL);
 if (attrs == ((void*)0))
  return -ENOMEM;

 ret = init_status_attrs();
 if (ret) {
  kfree(attrs);
  return ret;
 }
 *attrs = &dev_attr_nports.attr;
 *(attrs + 1) = &dev_attr_detach.attr;
 *(attrs + 2) = &dev_attr_attach.attr;
 *(attrs + 3) = &dev_attr_usbip_debug.attr;
 for (i = 0; i < vhci_num_controllers; i++)
  *(attrs + i + 4) = &((status_attrs + i)->attr.attr);
 vhci_attr_group.attrs = attrs;
 return 0;
}
