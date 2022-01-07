
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ehci_hcd {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_3__ {struct device* controller; } ;
struct TYPE_4__ {TYPE_1__ self; } ;


 int dev_attr_companion ;
 int dev_attr_uframe_periodic_max ;
 int device_create_file (struct device*,int *) ;
 int ehci_is_TDI (struct ehci_hcd*) ;
 TYPE_2__* ehci_to_hcd (struct ehci_hcd*) ;

__attribute__((used)) static inline int create_sysfs_files(struct ehci_hcd *ehci)
{
 struct device *controller = ehci_to_hcd(ehci)->self.controller;
 int i = 0;


 if (!ehci_is_TDI(ehci))
  i = device_create_file(controller, &dev_attr_companion);
 if (i)
  goto out;

 i = device_create_file(controller, &dev_attr_uframe_periodic_max);
out:
 return i;
}
