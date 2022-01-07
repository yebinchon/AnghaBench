
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hpsa_scsi_dev_t {int bus; int target; int lun; } ;



__attribute__((used)) static inline void hpsa_set_bus_target_lun(struct hpsa_scsi_dev_t *device,
 int bus, int target, int lun)
{
 device->bus = bus;
 device->target = target;
 device->lun = lun;
}
