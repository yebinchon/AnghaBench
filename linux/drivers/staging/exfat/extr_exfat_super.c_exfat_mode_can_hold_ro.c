
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int i_mode; int i_sb; } ;
struct TYPE_2__ {int fs_fmask; } ;
struct exfat_sb_info {TYPE_1__ options; } ;


 struct exfat_sb_info* EXFAT_SB (int ) ;
 scalar_t__ S_ISDIR (int ) ;

__attribute__((used)) static inline int exfat_mode_can_hold_ro(struct inode *inode)
{
 struct exfat_sb_info *sbi = EXFAT_SB(inode->i_sb);

 if (S_ISDIR(inode->i_mode))
  return 0;

 if ((~sbi->options.fs_fmask) & 0222)
  return 1;
 return 0;
}
