
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct exfat_sb_info {int s_dirt; } ;


 struct exfat_sb_info* EXFAT_SB (struct super_block*) ;

__attribute__((used)) static void __set_sb_dirty(struct super_block *sb)
{
 struct exfat_sb_info *sbi = EXFAT_SB(sb);

 sbi->s_dirt = 1;
}
