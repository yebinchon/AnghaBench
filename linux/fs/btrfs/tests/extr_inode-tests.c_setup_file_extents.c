
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct btrfs_root {int dummy; } ;


 int BTRFS_COMPRESS_ZLIB ;
 int BTRFS_FILE_EXTENT_INLINE ;
 int BTRFS_FILE_EXTENT_PREALLOC ;
 int BTRFS_FILE_EXTENT_REG ;
 int SZ_1M ;
 int insert_extent (struct btrfs_root*,int,int,int,int,int,int,int ,int ,int) ;

__attribute__((used)) static void setup_file_extents(struct btrfs_root *root, u32 sectorsize)
{
 int slot = 0;
 u64 disk_bytenr = SZ_1M;
 u64 offset = 0;


 insert_extent(root, offset, 5, 5, 0, 0, 0, BTRFS_FILE_EXTENT_REG, 0,
        slot);
 slot++;
 offset += 5;







 insert_extent(root, offset, 1, 1, 0, 0, 0, BTRFS_FILE_EXTENT_INLINE, 0,
        slot);
 slot++;
 offset = sectorsize;


 insert_extent(root, offset, 4, 4, 0, 0, 0, BTRFS_FILE_EXTENT_REG, 0,
        slot);
 slot++;
 offset += 4;


 insert_extent(root, offset, sectorsize - 1, sectorsize - 1, 0,
        disk_bytenr, sectorsize, BTRFS_FILE_EXTENT_REG, 0, slot);
 slot++;
 disk_bytenr += sectorsize;
 offset += sectorsize - 1;





 insert_extent(root, offset, sectorsize, 4 * sectorsize, 0, disk_bytenr,
        4 * sectorsize, BTRFS_FILE_EXTENT_REG, 0, slot);
 slot++;
 offset += sectorsize;
 insert_extent(root, offset, sectorsize, sectorsize, 0, 0, 0,
        BTRFS_FILE_EXTENT_REG, 0, slot);
 slot++;
 offset += sectorsize;
 insert_extent(root, offset, 2 * sectorsize, 4 * sectorsize,
        2 * sectorsize, disk_bytenr, 4 * sectorsize,
        BTRFS_FILE_EXTENT_REG, 0, slot);
 slot++;
 offset += 2 * sectorsize;
 disk_bytenr += 4 * sectorsize;


 insert_extent(root, offset, sectorsize, sectorsize, 0, disk_bytenr,
  sectorsize, BTRFS_FILE_EXTENT_PREALLOC, 0, slot);
 slot++;
 offset += sectorsize;





 disk_bytenr += 2 * sectorsize;






 insert_extent(root, offset, sectorsize, 4 * sectorsize, 0, disk_bytenr,
        4 * sectorsize, BTRFS_FILE_EXTENT_PREALLOC, 0, slot);
 slot++;
 offset += sectorsize;
 insert_extent(root, offset, sectorsize, 4 * sectorsize, sectorsize,
        disk_bytenr, 4 * sectorsize, BTRFS_FILE_EXTENT_REG, 0,
        slot);
 slot++;
 offset += sectorsize;
 insert_extent(root, offset, 2 * sectorsize, 4 * sectorsize,
        2 * sectorsize, disk_bytenr, 4 * sectorsize,
        BTRFS_FILE_EXTENT_PREALLOC, 0, slot);
 slot++;
 offset += 2 * sectorsize;
 disk_bytenr += 4 * sectorsize;


 insert_extent(root, offset, 2 * sectorsize, 2 * sectorsize, 0,
        disk_bytenr, sectorsize, BTRFS_FILE_EXTENT_REG,
        BTRFS_COMPRESS_ZLIB, slot);
 slot++;
 offset += 2 * sectorsize;

 disk_bytenr += 2 * sectorsize;


 insert_extent(root, offset, sectorsize, 4 * sectorsize, 0, disk_bytenr,
        sectorsize, BTRFS_FILE_EXTENT_REG,
        BTRFS_COMPRESS_ZLIB, slot);
 slot++;
 offset += sectorsize;
 insert_extent(root, offset, sectorsize, sectorsize, 0,
        disk_bytenr + sectorsize, sectorsize,
        BTRFS_FILE_EXTENT_REG, 0, slot);
 slot++;
 offset += sectorsize;
 insert_extent(root, offset, 2 * sectorsize, 4 * sectorsize,
        2 * sectorsize, disk_bytenr, sectorsize,
        BTRFS_FILE_EXTENT_REG, BTRFS_COMPRESS_ZLIB, slot);
 slot++;
 offset += 2 * sectorsize;
 disk_bytenr += 2 * sectorsize;


 insert_extent(root, offset, sectorsize, sectorsize, 0, disk_bytenr,
        sectorsize, BTRFS_FILE_EXTENT_REG, 0, slot);
 slot++;
 offset += 4 * sectorsize;
 disk_bytenr += sectorsize;
 insert_extent(root, offset, sectorsize, sectorsize, 0, disk_bytenr,
        sectorsize, BTRFS_FILE_EXTENT_REG, 0, slot);
}
