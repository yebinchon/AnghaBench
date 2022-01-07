
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct super_block {int dummy; } ;
struct fs_info_t {int ** vol_utbl; } ;
struct TYPE_3__ {scalar_t__ casesensitive; } ;
struct TYPE_4__ {TYPE_1__ options; struct fs_info_t fs_info; } ;


 TYPE_2__* EXFAT_SB (struct super_block*) ;
 size_t get_col_index (int ) ;
 size_t get_row_index (int ) ;

u16 nls_upper(struct super_block *sb, u16 a)
{
 struct fs_info_t *p_fs = &(EXFAT_SB(sb)->fs_info);

 if (EXFAT_SB(sb)->options.casesensitive)
  return a;
 if (p_fs->vol_utbl && p_fs->vol_utbl[get_col_index(a)])
  return p_fs->vol_utbl[get_col_index(a)][get_row_index(a)];
 else
  return a;
}
