
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct raid_map_disk_data {int * xor_mult; int ioaccel_handle; } ;
struct raid_map_data {int metadata_disks_per_row; int data_disks_per_row; int row_cnt; int layout_map_count; int dekindex; int flags; int disk_blk_cnt; int disk_starting_blk; int strip_size; int parity_rotation_shift; int phys_blk_shift; int volume_blk_cnt; int volume_blk_size; int structure_size; struct raid_map_disk_data* data; } ;
struct ctlr_info {int raid_offload_debug; TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int RAID_MAP_FLAG_ENCRYPT_ON ;
 int dev_info (int *,char*,...) ;
 int le16_to_cpu (int ) ;
 int le32_to_cpu (int ) ;
 int le64_to_cpu (int ) ;

__attribute__((used)) static void hpsa_debug_map_buff(struct ctlr_info *h, int rc,
    struct raid_map_data *map_buff)
{
 struct raid_map_disk_data *dd = &map_buff->data[0];
 int map, row, col;
 u16 map_cnt, row_cnt, disks_per_row;

 if (rc != 0)
  return;


 if (h->raid_offload_debug < 2)
  return;

 dev_info(&h->pdev->dev, "structure_size = %u\n",
    le32_to_cpu(map_buff->structure_size));
 dev_info(&h->pdev->dev, "volume_blk_size = %u\n",
   le32_to_cpu(map_buff->volume_blk_size));
 dev_info(&h->pdev->dev, "volume_blk_cnt = 0x%llx\n",
   le64_to_cpu(map_buff->volume_blk_cnt));
 dev_info(&h->pdev->dev, "physicalBlockShift = %u\n",
   map_buff->phys_blk_shift);
 dev_info(&h->pdev->dev, "parity_rotation_shift = %u\n",
   map_buff->parity_rotation_shift);
 dev_info(&h->pdev->dev, "strip_size = %u\n",
   le16_to_cpu(map_buff->strip_size));
 dev_info(&h->pdev->dev, "disk_starting_blk = 0x%llx\n",
   le64_to_cpu(map_buff->disk_starting_blk));
 dev_info(&h->pdev->dev, "disk_blk_cnt = 0x%llx\n",
   le64_to_cpu(map_buff->disk_blk_cnt));
 dev_info(&h->pdev->dev, "data_disks_per_row = %u\n",
   le16_to_cpu(map_buff->data_disks_per_row));
 dev_info(&h->pdev->dev, "metadata_disks_per_row = %u\n",
   le16_to_cpu(map_buff->metadata_disks_per_row));
 dev_info(&h->pdev->dev, "row_cnt = %u\n",
   le16_to_cpu(map_buff->row_cnt));
 dev_info(&h->pdev->dev, "layout_map_count = %u\n",
   le16_to_cpu(map_buff->layout_map_count));
 dev_info(&h->pdev->dev, "flags = 0x%x\n",
   le16_to_cpu(map_buff->flags));
 dev_info(&h->pdev->dev, "encryption = %s\n",
   le16_to_cpu(map_buff->flags) &
   RAID_MAP_FLAG_ENCRYPT_ON ? "ON" : "OFF");
 dev_info(&h->pdev->dev, "dekindex = %u\n",
   le16_to_cpu(map_buff->dekindex));
 map_cnt = le16_to_cpu(map_buff->layout_map_count);
 for (map = 0; map < map_cnt; map++) {
  dev_info(&h->pdev->dev, "Map%u:\n", map);
  row_cnt = le16_to_cpu(map_buff->row_cnt);
  for (row = 0; row < row_cnt; row++) {
   dev_info(&h->pdev->dev, "  Row%u:\n", row);
   disks_per_row =
    le16_to_cpu(map_buff->data_disks_per_row);
   for (col = 0; col < disks_per_row; col++, dd++)
    dev_info(&h->pdev->dev,
     "    D%02u: h=0x%04x xor=%u,%u\n",
     col, dd->ioaccel_handle,
     dd->xor_mult[0], dd->xor_mult[1]);
   disks_per_row =
    le16_to_cpu(map_buff->metadata_disks_per_row);
   for (col = 0; col < disks_per_row; col++, dd++)
    dev_info(&h->pdev->dev,
     "    M%02u: h=0x%04x xor=%u,%u\n",
     col, dd->ioaccel_handle,
     dd->xor_mult[0], dd->xor_mult[1]);
  }
 }
}
