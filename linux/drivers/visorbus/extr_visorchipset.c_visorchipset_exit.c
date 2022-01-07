
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct acpi_device {int dummy; } ;
struct TYPE_7__ {int controlvm_channel; TYPE_2__* acpi_device; int periodic_controlvm_work; } ;
struct TYPE_5__ {int kobj; } ;
struct TYPE_6__ {TYPE_1__ dev; } ;


 int cancel_delayed_work_sync (int *) ;
 TYPE_3__* chipset_dev ;
 int kfree (TYPE_3__*) ;
 int sysfs_remove_groups (int *,int ) ;
 int visorbus_exit () ;
 int visorchannel_destroy (int ) ;
 int visorchipset_dev_groups ;

__attribute__((used)) static int visorchipset_exit(struct acpi_device *acpi_device)
{
 visorbus_exit();
 cancel_delayed_work_sync(&chipset_dev->periodic_controlvm_work);
 sysfs_remove_groups(&chipset_dev->acpi_device->dev.kobj,
       visorchipset_dev_groups);
 visorchannel_destroy(chipset_dev->controlvm_channel);
 kfree(chipset_dev);
 return 0;
}
