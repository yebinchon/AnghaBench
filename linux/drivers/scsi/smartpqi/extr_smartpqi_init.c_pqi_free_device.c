
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pqi_scsi_dev {struct pqi_scsi_dev* raid_map; } ;


 int kfree (struct pqi_scsi_dev*) ;

__attribute__((used)) static inline void pqi_free_device(struct pqi_scsi_dev *device)
{
 if (device) {
  kfree(device->raid_map);
  kfree(device);
 }
}
