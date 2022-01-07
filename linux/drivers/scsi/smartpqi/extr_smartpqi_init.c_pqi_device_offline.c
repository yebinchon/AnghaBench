
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pqi_scsi_dev {int device_offline; } ;



__attribute__((used)) static inline bool pqi_device_offline(struct pqi_scsi_dev *device)
{
 return device->device_offline;
}
