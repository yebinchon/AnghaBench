
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct raid_map {int structure_size; } ;
struct pqi_scsi_dev {struct raid_map* raid_map; int scsi3addr; } ;
struct pqi_ctrl_info {TYPE_1__* pci_dev; } ;
struct TYPE_2__ {int dev; } ;


 int CISS_GET_RAID_MAP ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int NO_TIMEOUT ;
 int dev_warn (int *,char*,int,int) ;
 int get_unaligned_le32 (int *) ;
 int kfree (struct raid_map*) ;
 struct raid_map* kmalloc (int,int ) ;
 int pqi_send_scsi_raid_request (struct pqi_ctrl_info*,int ,int ,struct raid_map*,int,int ,int *,int ) ;
 int pqi_validate_raid_map (struct pqi_ctrl_info*,struct pqi_scsi_dev*,struct raid_map*) ;

__attribute__((used)) static int pqi_get_raid_map(struct pqi_ctrl_info *ctrl_info,
 struct pqi_scsi_dev *device)
{
 int rc;
 u32 raid_map_size;
 struct raid_map *raid_map;

 raid_map = kmalloc(sizeof(*raid_map), GFP_KERNEL);
 if (!raid_map)
  return -ENOMEM;

 rc = pqi_send_scsi_raid_request(ctrl_info, CISS_GET_RAID_MAP,
  device->scsi3addr, raid_map, sizeof(*raid_map),
  0, ((void*)0), NO_TIMEOUT);

 if (rc)
  goto error;

 raid_map_size = get_unaligned_le32(&raid_map->structure_size);

 if (raid_map_size > sizeof(*raid_map)) {

  kfree(raid_map);

  raid_map = kmalloc(raid_map_size, GFP_KERNEL);
  if (!raid_map)
   return -ENOMEM;

  rc = pqi_send_scsi_raid_request(ctrl_info, CISS_GET_RAID_MAP,
   device->scsi3addr, raid_map, raid_map_size,
   0, ((void*)0), NO_TIMEOUT);
  if (rc)
   goto error;

  if (get_unaligned_le32(&raid_map->structure_size)
   != raid_map_size) {
   dev_warn(&ctrl_info->pci_dev->dev,
    "Requested %d bytes, received %d bytes",
    raid_map_size,
    get_unaligned_le32(&raid_map->structure_size));
   goto error;
  }
 }

 rc = pqi_validate_raid_map(ctrl_info, device, raid_map);
 if (rc)
  goto error;

 device->raid_map = raid_map;

 return 0;

error:
 kfree(raid_map);

 return rc;
}
