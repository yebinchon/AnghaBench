
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct fs_info_t {int map_sectors; int * vol_amap; } ;
struct TYPE_2__ {struct fs_info_t fs_info; } ;


 TYPE_1__* EXFAT_SB (struct super_block*) ;
 int sync_dirty_buffer (int ) ;

void sync_alloc_bitmap(struct super_block *sb)
{
 int i;
 struct fs_info_t *p_fs = &(EXFAT_SB(sb)->fs_info);

 if (!p_fs->vol_amap)
  return;

 for (i = 0; i < p_fs->map_sectors; i++)
  sync_dirty_buffer(p_fs->vol_amap[i]);
}
