
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;


 int bdev_sync (struct super_block*) ;

__attribute__((used)) static inline void fs_sync(struct super_block *sb, bool do_sync)
{
 if (do_sync)
  bdev_sync(sb);
}
