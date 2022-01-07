
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pqi_scsi_dev {int bus; int target; int lun; } ;



__attribute__((used)) static inline void pqi_set_bus_target_lun(struct pqi_scsi_dev *device,
 int bus, int target, int lun)
{
 device->bus = bus;
 device->target = target;
 device->lun = lun;
}
