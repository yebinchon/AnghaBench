
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int i_gid; int i_uid; } ;
struct TYPE_2__ {int allow_utime; } ;
struct exfat_sb_info {TYPE_1__ options; } ;
typedef int mode_t ;


 int MAY_WRITE ;
 int current_fsuid () ;
 scalar_t__ in_group_p (int ) ;
 int uid_eq (int ,int ) ;

__attribute__((used)) static int exfat_allow_set_time(struct exfat_sb_info *sbi, struct inode *inode)
{
 mode_t allow_utime = sbi->options.allow_utime;

 if (!uid_eq(current_fsuid(), inode->i_uid)) {
  if (in_group_p(inode->i_gid))
   allow_utime >>= 3;
  if (allow_utime & MAY_WRITE)
   return 1;
 }


 return 0;
}
