
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct fotg210_hcd {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_3__ {struct device* controller; } ;
struct TYPE_4__ {TYPE_1__ self; } ;


 int dev_attr_uframe_periodic_max ;
 int device_remove_file (struct device*,int *) ;
 TYPE_2__* fotg210_to_hcd (struct fotg210_hcd*) ;

__attribute__((used)) static inline void remove_sysfs_files(struct fotg210_hcd *fotg210)
{
 struct device *controller = fotg210_to_hcd(fotg210)->self.controller;

 device_remove_file(controller, &dev_attr_uframe_periodic_max);
}
