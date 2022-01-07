
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;


 int SB_NODIRATIME ;

__attribute__((used)) static int exfat_remount(struct super_block *sb, int *flags, char *data)
{
 *flags |= SB_NODIRATIME;
 return 0;
}
