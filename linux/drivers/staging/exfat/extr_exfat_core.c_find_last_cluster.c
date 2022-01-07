
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct super_block {int dummy; } ;
struct fs_info_t {scalar_t__ dev_ejected; } ;
struct chain_t {int dir; int flags; int size; } ;
struct TYPE_2__ {struct fs_info_t fs_info; } ;


 int CLUSTER_32 (int ) ;
 TYPE_1__* EXFAT_SB (struct super_block*) ;
 scalar_t__ FAT_read (struct super_block*,int,int*) ;

u32 find_last_cluster(struct super_block *sb, struct chain_t *p_chain)
{
 u32 clu, next;
 struct fs_info_t *p_fs = &(EXFAT_SB(sb)->fs_info);

 clu = p_chain->dir;

 if (p_chain->flags == 0x03) {
  clu += p_chain->size - 1;
 } else {
  while ((FAT_read(sb, clu, &next) == 0) &&
         (next != CLUSTER_32(~0))) {
   if (p_fs->dev_ejected)
    break;
   clu = next;
  }
 }

 return clu;
}
