
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ power; } ;
struct acpi_processor {TYPE_2__* performance; TYPE_1__ flags; int acpi_id; } ;
struct TYPE_4__ {scalar_t__ states; } ;


 int EBUSY ;
 scalar_t__ __test_and_set_bit (int ,int ) ;
 int acpi_ids_done ;
 int acpi_ids_mutex ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int push_cxx_to_hypervisor (struct acpi_processor*) ;
 int push_pxx_to_hypervisor (struct acpi_processor*) ;

__attribute__((used)) static int upload_pm_data(struct acpi_processor *_pr)
{
 int err = 0;

 mutex_lock(&acpi_ids_mutex);
 if (__test_and_set_bit(_pr->acpi_id, acpi_ids_done)) {
  mutex_unlock(&acpi_ids_mutex);
  return -EBUSY;
 }
 if (_pr->flags.power)
  err = push_cxx_to_hypervisor(_pr);

 if (_pr->performance && _pr->performance->states)
  err |= push_pxx_to_hypervisor(_pr);

 mutex_unlock(&acpi_ids_mutex);
 return err;
}
