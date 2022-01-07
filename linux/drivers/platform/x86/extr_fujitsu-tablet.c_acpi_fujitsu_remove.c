
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct acpi_device {int dummy; } ;
struct TYPE_2__ {int io_length; int io_base; int irq; } ;


 int free_irq (int ,int ) ;
 TYPE_1__ fujitsu ;
 int fujitsu_interrupt ;
 int input_fujitsu_remove () ;
 int release_region (int ,int ) ;

__attribute__((used)) static int acpi_fujitsu_remove(struct acpi_device *adev)
{
 free_irq(fujitsu.irq, fujitsu_interrupt);
 release_region(fujitsu.io_base, fujitsu.io_length);
 input_fujitsu_remove();
 return 0;
}
