
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int * s_fs_info; } ;
struct exfat_sb_info {int dummy; } ;


 struct exfat_sb_info* EXFAT_SB (struct super_block*) ;
 scalar_t__ __is_sb_dirty (struct super_block*) ;
 int exfat_free_super (struct exfat_sb_info*) ;
 int exfat_write_super (struct super_block*) ;
 int ffsUmountVol (struct super_block*) ;

__attribute__((used)) static void exfat_put_super(struct super_block *sb)
{
 struct exfat_sb_info *sbi = EXFAT_SB(sb);

 if (__is_sb_dirty(sb))
  exfat_write_super(sb);

 ffsUmountVol(sb);

 sb->s_fs_info = ((void*)0);
 exfat_free_super(sbi);
}
