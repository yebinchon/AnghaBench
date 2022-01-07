
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;


 int EINVAL ;
 int SB_RDONLY ;
 int sync_filesystem (struct super_block*) ;

__attribute__((used)) static int
befs_remount(struct super_block *sb, int *flags, char *data)
{
 sync_filesystem(sb);
 if (!(*flags & SB_RDONLY))
  return -EINVAL;
 return 0;
}
