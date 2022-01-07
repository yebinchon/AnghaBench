
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u64 ;
typedef scalar_t__ u32 ;
typedef scalar_t__ u16 ;
struct scsi_cmnd {int* cmnd; } ;
struct raid_map {scalar_t__ parity_rotation_shift; int phys_blk_shift; int flags; int disk_starting_blk; TYPE_1__* disk_data; int row_cnt; int metadata_disks_per_row; int layout_map_count; int strip_size; int data_disks_per_row; int volume_blk_cnt; } ;
struct pqi_scsi_dev {scalar_t__ raid_level; int offload_to_mirror; struct raid_map* raid_map; } ;
struct pqi_queue_group {int dummy; } ;
struct pqi_encryption_info {int dummy; } ;
struct pqi_ctrl_info {int dummy; } ;
struct TYPE_2__ {scalar_t__ aio_handle; } ;


 int PQI_RAID_BYPASS_INELIGIBLE ;
 int RAID_MAP_ENCRYPTION_ENABLED ;




 scalar_t__ SA_RAID_0 ;
 scalar_t__ SA_RAID_1 ;
 scalar_t__ SA_RAID_5 ;
 scalar_t__ SA_RAID_6 ;
 scalar_t__ SA_RAID_ADM ;
 int WARN_ON (int) ;




 scalar_t__ do_div (scalar_t__,scalar_t__) ;
 scalar_t__ get_unaligned_be16 (int*) ;
 scalar_t__ get_unaligned_be32 (int*) ;
 scalar_t__ get_unaligned_be64 (int*) ;
 int get_unaligned_le16 (int *) ;
 scalar_t__ get_unaligned_le64 (int *) ;
 int pqi_aio_submit_io (struct pqi_ctrl_info*,struct scsi_cmnd*,scalar_t__,int*,int,struct pqi_queue_group*,struct pqi_encryption_info*,int) ;
 int pqi_set_encryption_info (struct pqi_encryption_info*,struct raid_map*,scalar_t__) ;
 int put_unaligned_be16 (scalar_t__,int*) ;
 int put_unaligned_be32 (scalar_t__,int*) ;
 int put_unaligned_be64 (scalar_t__,int*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int pqi_raid_bypass_submit_scsi_cmd(struct pqi_ctrl_info *ctrl_info,
 struct pqi_scsi_dev *device, struct scsi_cmnd *scmd,
 struct pqi_queue_group *queue_group)
{
 struct raid_map *raid_map;
 bool is_write = 0;
 u32 map_index;
 u64 first_block;
 u64 last_block;
 u32 block_cnt;
 u32 blocks_per_row;
 u64 first_row;
 u64 last_row;
 u32 first_row_offset;
 u32 last_row_offset;
 u32 first_column;
 u32 last_column;
 u64 r0_first_row;
 u64 r0_last_row;
 u32 r5or6_blocks_per_row;
 u64 r5or6_first_row;
 u64 r5or6_last_row;
 u32 r5or6_first_row_offset;
 u32 r5or6_last_row_offset;
 u32 r5or6_first_column;
 u32 r5or6_last_column;
 u16 data_disks_per_row;
 u32 total_disks_per_row;
 u16 layout_map_count;
 u32 stripesize;
 u16 strip_size;
 u32 first_group;
 u32 last_group;
 u32 current_group;
 u32 map_row;
 u32 aio_handle;
 u64 disk_block;
 u32 disk_block_cnt;
 u8 cdb[16];
 u8 cdb_length;
 int offload_to_mirror;
 struct pqi_encryption_info *encryption_info_ptr;
 struct pqi_encryption_info encryption_info;





 switch (scmd->cmnd[0]) {
 case 128:
  is_write = 1;

 case 132:
  first_block = (u64)(((scmd->cmnd[1] & 0x1f) << 16) |
   (scmd->cmnd[2] << 8) | scmd->cmnd[3]);
  block_cnt = (u32)scmd->cmnd[4];
  if (block_cnt == 0)
   block_cnt = 256;
  break;
 case 131:
  is_write = 1;

 case 135:
  first_block = (u64)get_unaligned_be32(&scmd->cmnd[2]);
  block_cnt = (u32)get_unaligned_be16(&scmd->cmnd[7]);
  break;
 case 130:
  is_write = 1;

 case 134:
  first_block = (u64)get_unaligned_be32(&scmd->cmnd[2]);
  block_cnt = get_unaligned_be32(&scmd->cmnd[6]);
  break;
 case 129:
  is_write = 1;

 case 133:
  first_block = get_unaligned_be64(&scmd->cmnd[2]);
  block_cnt = get_unaligned_be32(&scmd->cmnd[10]);
  break;
 default:

  return PQI_RAID_BYPASS_INELIGIBLE;
 }


 if (is_write && device->raid_level != SA_RAID_0)
  return PQI_RAID_BYPASS_INELIGIBLE;

 if (unlikely(block_cnt == 0))
  return PQI_RAID_BYPASS_INELIGIBLE;

 last_block = first_block + block_cnt - 1;
 raid_map = device->raid_map;


 if (last_block >= get_unaligned_le64(&raid_map->volume_blk_cnt) ||
  last_block < first_block)
  return PQI_RAID_BYPASS_INELIGIBLE;

 data_disks_per_row = get_unaligned_le16(&raid_map->data_disks_per_row);
 strip_size = get_unaligned_le16(&raid_map->strip_size);
 layout_map_count = get_unaligned_le16(&raid_map->layout_map_count);


 blocks_per_row = data_disks_per_row * strip_size;
 first_row = first_block / blocks_per_row;
 last_row = last_block / blocks_per_row;
 first_row_offset = (u32)(first_block - (first_row * blocks_per_row));
 last_row_offset = (u32)(last_block - (last_row * blocks_per_row));
 first_column = first_row_offset / strip_size;
 last_column = last_row_offset / strip_size;



 if (first_row != last_row || first_column != last_column)
  return PQI_RAID_BYPASS_INELIGIBLE;


 total_disks_per_row = data_disks_per_row +
  get_unaligned_le16(&raid_map->metadata_disks_per_row);
 map_row = ((u32)(first_row >> raid_map->parity_rotation_shift)) %
  get_unaligned_le16(&raid_map->row_cnt);
 map_index = (map_row * total_disks_per_row) + first_column;


 if (device->raid_level == SA_RAID_1) {
  if (device->offload_to_mirror)
   map_index += data_disks_per_row;
  device->offload_to_mirror = !device->offload_to_mirror;
 } else if (device->raid_level == SA_RAID_ADM) {





  offload_to_mirror = device->offload_to_mirror;
  if (offload_to_mirror == 0) {

   map_index %= data_disks_per_row;
  } else {
   do {




    current_group = map_index / data_disks_per_row;

    if (offload_to_mirror != current_group) {
     if (current_group <
      layout_map_count - 1) {




      map_index += data_disks_per_row;
      current_group++;
     } else {




      map_index %= data_disks_per_row;
      current_group = 0;
     }
    }
   } while (offload_to_mirror != current_group);
  }


  offload_to_mirror =
   (offload_to_mirror >= layout_map_count - 1) ?
    0 : offload_to_mirror + 1;
  WARN_ON(offload_to_mirror >= layout_map_count);
  device->offload_to_mirror = offload_to_mirror;





 } else if ((device->raid_level == SA_RAID_5 ||
  device->raid_level == SA_RAID_6) && layout_map_count > 1) {


  r5or6_blocks_per_row = strip_size * data_disks_per_row;
  stripesize = r5or6_blocks_per_row * layout_map_count;
  first_group = (first_block % stripesize) / r5or6_blocks_per_row;
  last_group = (last_block % stripesize) / r5or6_blocks_per_row;

  if (first_group != last_group)
   return PQI_RAID_BYPASS_INELIGIBLE;
  first_row = r5or6_first_row = r0_first_row =
   first_block / stripesize;
  r5or6_last_row = r0_last_row = last_block / stripesize;

  if (r5or6_first_row != r5or6_last_row)
   return PQI_RAID_BYPASS_INELIGIBLE;
  first_row_offset = r5or6_first_row_offset =
   (u32)((first_block % stripesize) %
   r5or6_blocks_per_row);

  r5or6_last_row_offset =
   (u32)((last_block % stripesize) %
   r5or6_blocks_per_row);

  first_column = r5or6_first_row_offset / strip_size;
  r5or6_first_column = first_column;
  r5or6_last_column = r5or6_last_row_offset / strip_size;

  if (r5or6_first_column != r5or6_last_column)
   return PQI_RAID_BYPASS_INELIGIBLE;


  map_row =
   ((u32)(first_row >> raid_map->parity_rotation_shift)) %
   get_unaligned_le16(&raid_map->row_cnt);

  map_index = (first_group *
   (get_unaligned_le16(&raid_map->row_cnt) *
   total_disks_per_row)) +
   (map_row * total_disks_per_row) + first_column;
 }

 aio_handle = raid_map->disk_data[map_index].aio_handle;
 disk_block = get_unaligned_le64(&raid_map->disk_starting_blk) +
  first_row * strip_size +
  (first_row_offset - first_column * strip_size);
 disk_block_cnt = block_cnt;


 if (raid_map->phys_blk_shift) {
  disk_block <<= raid_map->phys_blk_shift;
  disk_block_cnt <<= raid_map->phys_blk_shift;
 }

 if (unlikely(disk_block_cnt > 0xffff))
  return PQI_RAID_BYPASS_INELIGIBLE;


 if (disk_block > 0xffffffff) {
  cdb[0] = is_write ? 129 : 133;
  cdb[1] = 0;
  put_unaligned_be64(disk_block, &cdb[2]);
  put_unaligned_be32(disk_block_cnt, &cdb[10]);
  cdb[14] = 0;
  cdb[15] = 0;
  cdb_length = 16;
 } else {
  cdb[0] = is_write ? 131 : 135;
  cdb[1] = 0;
  put_unaligned_be32((u32)disk_block, &cdb[2]);
  cdb[6] = 0;
  put_unaligned_be16((u16)disk_block_cnt, &cdb[7]);
  cdb[9] = 0;
  cdb_length = 10;
 }

 if (get_unaligned_le16(&raid_map->flags) &
  RAID_MAP_ENCRYPTION_ENABLED) {
  pqi_set_encryption_info(&encryption_info, raid_map,
   first_block);
  encryption_info_ptr = &encryption_info;
 } else {
  encryption_info_ptr = ((void*)0);
 }

 return pqi_aio_submit_io(ctrl_info, scmd, aio_handle,
  cdb, cdb_length, queue_group, encryption_info_ptr, 1);
}
