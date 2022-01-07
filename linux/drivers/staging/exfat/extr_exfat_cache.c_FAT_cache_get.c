
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct TYPE_3__ {struct buf_cache_t* prev; } ;
struct fs_info_t {TYPE_1__ FAT_cache_lru_list; } ;
struct buf_cache_t {int dummy; } ;
typedef int sector_t ;
struct TYPE_4__ {struct fs_info_t fs_info; } ;


 TYPE_2__* EXFAT_SB (struct super_block*) ;
 int move_to_mru (struct buf_cache_t*,TYPE_1__*) ;

__attribute__((used)) static struct buf_cache_t *FAT_cache_get(struct super_block *sb, sector_t sec)
{
 struct buf_cache_t *bp;
 struct fs_info_t *p_fs = &(EXFAT_SB(sb)->fs_info);

 bp = p_fs->FAT_cache_lru_list.prev;

 move_to_mru(bp, &p_fs->FAT_cache_lru_list);
 return bp;
}
