
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pqi_scsi_dev {int is_physical_device; } ;



__attribute__((used)) static inline bool pqi_is_logical_device(struct pqi_scsi_dev *device)
{
 return !device->is_physical_device;
}
