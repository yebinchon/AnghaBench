
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gasket_internal_desc {int class; } ;
struct TYPE_2__ {int devt; int device; } ;
struct gasket_dev {TYPE_1__ dev_info; } ;


 int device_destroy (int ,int ) ;
 int gasket_free_dev (struct gasket_dev*) ;
 int gasket_sysfs_remove_mapping (int ) ;

__attribute__((used)) static void __gasket_remove_device(struct gasket_internal_desc *internal_desc,
       struct gasket_dev *gasket_dev)
{
 gasket_sysfs_remove_mapping(gasket_dev->dev_info.device);
 device_destroy(internal_desc->class, gasket_dev->dev_info.devt);
 gasket_free_dev(gasket_dev);
}
