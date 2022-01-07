
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int s_flags; } ;
struct exfat_mount_options {scalar_t__ errors; } ;
struct TYPE_2__ {struct exfat_mount_options options; } ;


 scalar_t__ EXFAT_ERRORS_PANIC ;
 scalar_t__ EXFAT_ERRORS_RO ;
 TYPE_1__* EXFAT_SB (struct super_block*) ;
 int SB_RDONLY ;
 int panic (char*) ;
 int pr_err (char*) ;
 int sb_rdonly (struct super_block*) ;

void fs_error(struct super_block *sb)
{
 struct exfat_mount_options *opts = &EXFAT_SB(sb)->options;

 if (opts->errors == EXFAT_ERRORS_PANIC) {
  panic("[EXFAT] Filesystem panic from previous error\n");
 } else if ((opts->errors == EXFAT_ERRORS_RO) && !sb_rdonly(sb)) {
  sb->s_flags |= SB_RDONLY;
  pr_err("[EXFAT] Filesystem has been set read-only\n");
 }
}
