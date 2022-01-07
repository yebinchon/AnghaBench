
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hpsa_scsi_dev_t {scalar_t__ raid_level; scalar_t__ offload_config; scalar_t__ offload_to_be_enabled; scalar_t__ queue_depth; scalar_t__ ioaccel_handle; int scsi3addr; } ;


 int is_logical_dev_addr_mode (int ) ;

__attribute__((used)) static inline int device_updated(struct hpsa_scsi_dev_t *dev1,
 struct hpsa_scsi_dev_t *dev2)
{




 if (dev1->raid_level != dev2->raid_level)
  return 1;
 if (dev1->offload_config != dev2->offload_config)
  return 1;
 if (dev1->offload_to_be_enabled != dev2->offload_to_be_enabled)
  return 1;
 if (!is_logical_dev_addr_mode(dev1->scsi3addr))
  if (dev1->queue_depth != dev2->queue_depth)
   return 1;
 if (dev1->ioaccel_handle != dev2->ioaccel_handle)
  return 1;
 return 0;
}
