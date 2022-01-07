
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pqi_scsi_dev {int * sdev; int * sas_port; scalar_t__ is_expander_smp_device; } ;



__attribute__((used)) static inline bool pqi_is_device_added(struct pqi_scsi_dev *device)
{
 if (device->is_expander_smp_device)
  return device->sas_port != ((void*)0);

 return device->sdev != ((void*)0);
}
