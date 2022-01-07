
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;


 scalar_t__ __is_sb_dirty (struct super_block*) ;
 int __lock_super (struct super_block*) ;
 int __set_sb_clean (struct super_block*) ;
 int __unlock_super (struct super_block*) ;
 int ffsSyncVol (struct super_block*,int) ;

__attribute__((used)) static int exfat_sync_fs(struct super_block *sb, int wait)
{
 int err = 0;

 if (__is_sb_dirty(sb)) {
  __lock_super(sb);
  __set_sb_clean(sb);
  err = ffsSyncVol(sb, 1);
  __unlock_super(sb);
 }

 return err;
}
