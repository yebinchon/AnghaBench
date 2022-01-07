
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pqi_scsi_dev {int in_remove; } ;



__attribute__((used)) static inline void pqi_device_remove_start(struct pqi_scsi_dev *device)
{
 device->in_remove = 1;
}
