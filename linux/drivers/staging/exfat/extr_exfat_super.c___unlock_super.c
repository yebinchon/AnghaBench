
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct exfat_sb_info {int s_lock; } ;


 struct exfat_sb_info* EXFAT_SB (struct super_block*) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void __unlock_super(struct super_block *sb)
{
 struct exfat_sb_info *sbi = EXFAT_SB(sb);

 mutex_unlock(&sbi->s_lock);
}
