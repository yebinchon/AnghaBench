
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
typedef scalar_t__ u32 ;
struct TYPE_2__ {char* raid_name; int bg_flag; } ;


 int BTRFS_AVAIL_ALLOC_BIT_SINGLE ;
 int BTRFS_BLOCK_GROUP_DATA ;
 int BTRFS_BLOCK_GROUP_METADATA ;
 int BTRFS_BLOCK_GROUP_SYSTEM ;
 int BTRFS_NR_RAID_TYPES ;
 int DESCRIBE_FLAG (int ,char*) ;
 TYPE_1__* btrfs_raid_array ;
 int snprintf (char*,scalar_t__,char*,scalar_t__) ;
 int strcpy (char*,char*) ;

void btrfs_describe_block_groups(u64 bg_flags, char *buf, u32 size_buf)
{
 int i;
 int ret;
 char *bp = buf;
 u64 flags = bg_flags;
 u32 size_bp = size_buf;

 if (!flags) {
  strcpy(bp, "NONE");
  return;
 }
 do { if (flags & (BTRFS_BLOCK_GROUP_DATA)) { ret = snprintf(bp, size_bp, "%s|", ("data")); if (ret < 0 || ret >= size_bp) goto out_overflow; size_bp -= ret; bp += ret; flags &= ~(BTRFS_BLOCK_GROUP_DATA); } } while (0);
 do { if (flags & (BTRFS_BLOCK_GROUP_SYSTEM)) { ret = snprintf(bp, size_bp, "%s|", ("system")); if (ret < 0 || ret >= size_bp) goto out_overflow; size_bp -= ret; bp += ret; flags &= ~(BTRFS_BLOCK_GROUP_SYSTEM); } } while (0);
 do { if (flags & (BTRFS_BLOCK_GROUP_METADATA)) { ret = snprintf(bp, size_bp, "%s|", ("metadata")); if (ret < 0 || ret >= size_bp) goto out_overflow; size_bp -= ret; bp += ret; flags &= ~(BTRFS_BLOCK_GROUP_METADATA); } } while (0);

 do { if (flags & (BTRFS_AVAIL_ALLOC_BIT_SINGLE)) { ret = snprintf(bp, size_bp, "%s|", ("single")); if (ret < 0 || ret >= size_bp) goto out_overflow; size_bp -= ret; bp += ret; flags &= ~(BTRFS_AVAIL_ALLOC_BIT_SINGLE); } } while (0);
 for (i = 0; i < BTRFS_NR_RAID_TYPES; i++)
  do { if (flags & (btrfs_raid_array[i].bg_flag)) { ret = snprintf(bp, size_bp, "%s|", (btrfs_raid_array[i].raid_name)); if (ret < 0 || ret >= size_bp) goto out_overflow; size_bp -= ret; bp += ret; flags &= ~(btrfs_raid_array[i].bg_flag); } } while (0);



 if (flags) {
  ret = snprintf(bp, size_bp, "0x%llx|", flags);
  size_bp -= ret;
 }

 if (size_bp < size_buf)
  buf[size_buf - size_bp - 1] = '\0';





out_overflow:;
}
