
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct super_block {int dummy; } ;
struct fs_info_t {TYPE_1__** vol_amap; int map_clu; } ;
struct bd_info_t {int sector_size_bits; int sector_size; } ;
typedef scalar_t__ sector_t ;
typedef int s32 ;
struct TYPE_4__ {struct bd_info_t bd_info; struct fs_info_t fs_info; } ;
struct TYPE_3__ {scalar_t__ b_data; } ;


 TYPE_2__* EXFAT_SB (struct super_block*) ;
 scalar_t__ START_SECTOR (int ) ;
 int exfat_bitmap_set (int *,int) ;
 int sector_write (struct super_block*,scalar_t__,TYPE_1__*,int ) ;

s32 set_alloc_bitmap(struct super_block *sb, u32 clu)
{
 int i, b;
 sector_t sector;
 struct fs_info_t *p_fs = &(EXFAT_SB(sb)->fs_info);
 struct bd_info_t *p_bd = &(EXFAT_SB(sb)->bd_info);

 i = clu >> (p_bd->sector_size_bits + 3);
 b = clu & ((p_bd->sector_size << 3) - 1);

 sector = START_SECTOR(p_fs->map_clu) + i;

 exfat_bitmap_set((u8 *)p_fs->vol_amap[i]->b_data, b);

 return sector_write(sb, sector, p_fs->vol_amap[i], 0);
}
