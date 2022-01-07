
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pqi_scsi_dev {int scsi3addr; int is_physical_device; } ;


 int pqi_skip_device (int ) ;

__attribute__((used)) static inline bool pqi_expose_device(struct pqi_scsi_dev *device)
{
 return !device->is_physical_device ||
  !pqi_skip_device(device->scsi3addr);
}
