
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;


 int __lock_super (struct super_block*) ;
 int __set_sb_clean (struct super_block*) ;
 int __unlock_super (struct super_block*) ;
 int ffsSyncVol (struct super_block*,int) ;
 int sb_rdonly (struct super_block*) ;

__attribute__((used)) static void exfat_write_super(struct super_block *sb)
{
 __lock_super(sb);

 __set_sb_clean(sb);

 if (!sb_rdonly(sb))
  ffsSyncVol(sb, 1);

 __unlock_super(sb);
}
