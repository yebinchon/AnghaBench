
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct super_block {int * s_d_op; } ;
struct TYPE_3__ {scalar_t__ casesensitive; } ;
struct TYPE_4__ {TYPE_1__ options; } ;


 TYPE_2__* EXFAT_SB (struct super_block*) ;
 int exfat_ci_dentry_ops ;
 int exfat_dentry_ops ;

__attribute__((used)) static void setup_dops(struct super_block *sb)
{
 if (EXFAT_SB(sb)->options.casesensitive == 0)
  sb->s_d_op = &exfat_ci_dentry_ops;
 else
  sb->s_d_op = &exfat_dentry_ops;
}
