
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pqi_scsi_dev {int devtype; scalar_t__ is_expander_smp_device; } ;


 char const* scsi_device_type (int ) ;

__attribute__((used)) static inline const char *pqi_device_type(struct pqi_scsi_dev *device)
{
 if (device->is_expander_smp_device)
  return "Enclosure SMP    ";

 return scsi_device_type(device->devtype);
}
