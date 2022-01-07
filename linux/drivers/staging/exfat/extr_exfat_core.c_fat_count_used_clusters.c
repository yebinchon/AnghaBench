
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct super_block {int dummy; } ;
struct fs_info_t {int num_clusters; } ;
typedef int s32 ;
struct TYPE_2__ {struct fs_info_t fs_info; } ;


 scalar_t__ CLUSTER_32 (int ) ;
 TYPE_1__* EXFAT_SB (struct super_block*) ;
 scalar_t__ FAT_read (struct super_block*,int,scalar_t__*) ;

s32 fat_count_used_clusters(struct super_block *sb)
{
 int i, count = 0;
 u32 clu;
 struct fs_info_t *p_fs = &(EXFAT_SB(sb)->fs_info);

 for (i = 2; i < p_fs->num_clusters; i++) {
  if (FAT_read(sb, i, &clu) != 0)
   break;
  if (clu != CLUSTER_32(0))
   count++;
 }

 return count;
}
