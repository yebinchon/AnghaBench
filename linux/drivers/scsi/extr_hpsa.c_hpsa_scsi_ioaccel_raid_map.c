
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
typedef scalar_t__ u32 ;
typedef scalar_t__ u16 ;
struct scsi_cmnd {int* cmnd; TYPE_1__* device; } ;
struct raid_map_disk_data {scalar_t__ ioaccel_handle; } ;
struct raid_map_data {scalar_t__ data_disks_per_row; scalar_t__ strip_size; scalar_t__ metadata_disks_per_row; int parity_rotation_shift; scalar_t__ row_cnt; scalar_t__ layout_map_count; int phys_blk_shift; int disk_starting_blk; int volume_blk_cnt; struct raid_map_disk_data* data; } ;
struct hpsa_scsi_dev_t {int raid_level; int offload_to_mirror; int * phys_disk; int scsi3addr; scalar_t__ in_reset; struct raid_map_data raid_map; } ;
struct ctlr_info {int dummy; } ;
struct CommandList {int phys_disk; struct scsi_cmnd* scsi_cmd; } ;
struct TYPE_2__ {struct hpsa_scsi_dev_t* hostdata; } ;


 int BUG_ON (int) ;





 int IO_ACCEL_INELIGIBLE ;
 scalar_t__ RAID_MAP_MAX_ENTRIES ;
 scalar_t__ do_div (int,scalar_t__) ;
 int hpsa_scsi_ioaccel_queue_command (struct ctlr_info*,struct CommandList*,scalar_t__,int*,int,int ,int ) ;
 scalar_t__ le16_to_cpu (scalar_t__) ;
 scalar_t__ le64_to_cpu (int ) ;
 int raid_map_helper (struct raid_map_data*,int,scalar_t__*,scalar_t__*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int hpsa_scsi_ioaccel_raid_map(struct ctlr_info *h,
 struct CommandList *c)
{
 struct scsi_cmnd *cmd = c->scsi_cmd;
 struct hpsa_scsi_dev_t *dev = cmd->device->hostdata;
 struct raid_map_data *map = &dev->raid_map;
 struct raid_map_disk_data *dd = &map->data[0];
 int is_write = 0;
 u32 map_index;
 u64 first_block, last_block;
 u32 block_cnt;
 u32 blocks_per_row;
 u64 first_row, last_row;
 u32 first_row_offset, last_row_offset;
 u32 first_column, last_column;
 u64 r0_first_row, r0_last_row;
 u32 r5or6_blocks_per_row;
 u64 r5or6_first_row, r5or6_last_row;
 u32 r5or6_first_row_offset, r5or6_last_row_offset;
 u32 r5or6_first_column, r5or6_last_column;
 u32 total_disks_per_row;
 u32 stripesize;
 u32 first_group, last_group, current_group;
 u32 map_row;
 u32 disk_handle;
 u64 disk_block;
 u32 disk_block_cnt;
 u8 cdb[16];
 u8 cdb_len;
 u16 strip_size;



 int offload_to_mirror;

 if (!dev)
  return -1;

 if (dev->in_reset)
  return -1;


 switch (cmd->cmnd[0]) {
 case 128:
  is_write = 1;

 case 132:
  first_block = (((cmd->cmnd[1] & 0x1F) << 16) |
    (cmd->cmnd[2] << 8) |
    cmd->cmnd[3]);
  block_cnt = cmd->cmnd[4];
  if (block_cnt == 0)
   block_cnt = 256;
  break;
 case 131:
  is_write = 1;

 case 135:
  first_block =
   (((u64) cmd->cmnd[2]) << 24) |
   (((u64) cmd->cmnd[3]) << 16) |
   (((u64) cmd->cmnd[4]) << 8) |
   cmd->cmnd[5];
  block_cnt =
   (((u32) cmd->cmnd[7]) << 8) |
   cmd->cmnd[8];
  break;
 case 130:
  is_write = 1;

 case 134:
  first_block =
   (((u64) cmd->cmnd[2]) << 24) |
   (((u64) cmd->cmnd[3]) << 16) |
   (((u64) cmd->cmnd[4]) << 8) |
   cmd->cmnd[5];
  block_cnt =
   (((u32) cmd->cmnd[6]) << 24) |
   (((u32) cmd->cmnd[7]) << 16) |
   (((u32) cmd->cmnd[8]) << 8) |
  cmd->cmnd[9];
  break;
 case 129:
  is_write = 1;

 case 133:
  first_block =
   (((u64) cmd->cmnd[2]) << 56) |
   (((u64) cmd->cmnd[3]) << 48) |
   (((u64) cmd->cmnd[4]) << 40) |
   (((u64) cmd->cmnd[5]) << 32) |
   (((u64) cmd->cmnd[6]) << 24) |
   (((u64) cmd->cmnd[7]) << 16) |
   (((u64) cmd->cmnd[8]) << 8) |
   cmd->cmnd[9];
  block_cnt =
   (((u32) cmd->cmnd[10]) << 24) |
   (((u32) cmd->cmnd[11]) << 16) |
   (((u32) cmd->cmnd[12]) << 8) |
   cmd->cmnd[13];
  break;
 default:
  return IO_ACCEL_INELIGIBLE;
 }
 last_block = first_block + block_cnt - 1;


 if (is_write && dev->raid_level != 0)
  return IO_ACCEL_INELIGIBLE;


 if (last_block >= le64_to_cpu(map->volume_blk_cnt) ||
  last_block < first_block)
  return IO_ACCEL_INELIGIBLE;


 blocks_per_row = le16_to_cpu(map->data_disks_per_row) *
    le16_to_cpu(map->strip_size);
 strip_size = le16_to_cpu(map->strip_size);
 first_row = first_block / blocks_per_row;
 last_row = last_block / blocks_per_row;
 first_row_offset = (u32) (first_block - (first_row * blocks_per_row));
 last_row_offset = (u32) (last_block - (last_row * blocks_per_row));
 first_column = first_row_offset / strip_size;
 last_column = last_row_offset / strip_size;



 if ((first_row != last_row) || (first_column != last_column))
  return IO_ACCEL_INELIGIBLE;


 total_disks_per_row = le16_to_cpu(map->data_disks_per_row) +
    le16_to_cpu(map->metadata_disks_per_row);
 map_row = ((u32)(first_row >> map->parity_rotation_shift)) %
    le16_to_cpu(map->row_cnt);
 map_index = (map_row * total_disks_per_row) + first_column;

 switch (dev->raid_level) {
 case 140:
  break;
 case 139:




  BUG_ON(le16_to_cpu(map->layout_map_count) != 2);
  if (dev->offload_to_mirror)
   map_index += le16_to_cpu(map->data_disks_per_row);
  dev->offload_to_mirror = !dev->offload_to_mirror;
  break;
 case 136:



  BUG_ON(le16_to_cpu(map->layout_map_count) != 3);

  offload_to_mirror = dev->offload_to_mirror;
  raid_map_helper(map, offload_to_mirror,
    &map_index, &current_group);

  offload_to_mirror =
   (offload_to_mirror >=
   le16_to_cpu(map->layout_map_count) - 1)
   ? 0 : offload_to_mirror + 1;
  dev->offload_to_mirror = offload_to_mirror;




  break;
 case 138:
 case 137:
  if (le16_to_cpu(map->layout_map_count) <= 1)
   break;


  r5or6_blocks_per_row =
   le16_to_cpu(map->strip_size) *
   le16_to_cpu(map->data_disks_per_row);
  BUG_ON(r5or6_blocks_per_row == 0);
  stripesize = r5or6_blocks_per_row *
   le16_to_cpu(map->layout_map_count);
  first_group = (first_block % stripesize) / r5or6_blocks_per_row;
  last_group = (last_block % stripesize) / r5or6_blocks_per_row;

  if (first_group != last_group)
   return IO_ACCEL_INELIGIBLE;
  first_row = r5or6_first_row = r0_first_row =
      first_block / stripesize;
  r5or6_last_row = r0_last_row = last_block / stripesize;

  if (r5or6_first_row != r5or6_last_row)
   return IO_ACCEL_INELIGIBLE;
  first_row_offset = r5or6_first_row_offset =
   (u32)((first_block % stripesize) %
      r5or6_blocks_per_row);

  r5or6_last_row_offset =
   (u32)((last_block % stripesize) %
      r5or6_blocks_per_row);

  first_column = r5or6_first_column =
   r5or6_first_row_offset / le16_to_cpu(map->strip_size);
  r5or6_last_column =
   r5or6_last_row_offset / le16_to_cpu(map->strip_size);

  if (r5or6_first_column != r5or6_last_column)
   return IO_ACCEL_INELIGIBLE;


  map_row = ((u32)(first_row >> map->parity_rotation_shift)) %
   le16_to_cpu(map->row_cnt);

  map_index = (first_group *
   (le16_to_cpu(map->row_cnt) * total_disks_per_row)) +
   (map_row * total_disks_per_row) + first_column;
  break;
 default:
  return IO_ACCEL_INELIGIBLE;
 }

 if (unlikely(map_index >= RAID_MAP_MAX_ENTRIES))
  return IO_ACCEL_INELIGIBLE;

 c->phys_disk = dev->phys_disk[map_index];
 if (!c->phys_disk)
  return IO_ACCEL_INELIGIBLE;

 disk_handle = dd[map_index].ioaccel_handle;
 disk_block = le64_to_cpu(map->disk_starting_blk) +
   first_row * le16_to_cpu(map->strip_size) +
   (first_row_offset - first_column *
   le16_to_cpu(map->strip_size));
 disk_block_cnt = block_cnt;


 if (map->phys_blk_shift) {
  disk_block <<= map->phys_blk_shift;
  disk_block_cnt <<= map->phys_blk_shift;
 }
 BUG_ON(disk_block_cnt > 0xffff);


 if (disk_block > 0xffffffff) {
  cdb[0] = is_write ? 129 : 133;
  cdb[1] = 0;
  cdb[2] = (u8) (disk_block >> 56);
  cdb[3] = (u8) (disk_block >> 48);
  cdb[4] = (u8) (disk_block >> 40);
  cdb[5] = (u8) (disk_block >> 32);
  cdb[6] = (u8) (disk_block >> 24);
  cdb[7] = (u8) (disk_block >> 16);
  cdb[8] = (u8) (disk_block >> 8);
  cdb[9] = (u8) (disk_block);
  cdb[10] = (u8) (disk_block_cnt >> 24);
  cdb[11] = (u8) (disk_block_cnt >> 16);
  cdb[12] = (u8) (disk_block_cnt >> 8);
  cdb[13] = (u8) (disk_block_cnt);
  cdb[14] = 0;
  cdb[15] = 0;
  cdb_len = 16;
 } else {
  cdb[0] = is_write ? 131 : 135;
  cdb[1] = 0;
  cdb[2] = (u8) (disk_block >> 24);
  cdb[3] = (u8) (disk_block >> 16);
  cdb[4] = (u8) (disk_block >> 8);
  cdb[5] = (u8) (disk_block);
  cdb[6] = 0;
  cdb[7] = (u8) (disk_block_cnt >> 8);
  cdb[8] = (u8) (disk_block_cnt);
  cdb[9] = 0;
  cdb_len = 10;
 }
 return hpsa_scsi_ioaccel_queue_command(h, c, disk_handle, cdb, cdb_len,
      dev->scsi3addr,
      dev->phys_disk[map_index]);
}
