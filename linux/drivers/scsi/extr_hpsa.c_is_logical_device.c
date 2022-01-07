
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hpsa_scsi_dev_t {int physical_device; } ;



__attribute__((used)) static inline bool is_logical_device(struct hpsa_scsi_dev_t *device)
{
 return !device->physical_device;
}
