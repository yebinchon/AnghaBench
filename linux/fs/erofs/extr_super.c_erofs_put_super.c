
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct erofs_sb_info {int * managed_cache; } ;


 int DBG_BUGON (int) ;
 struct erofs_sb_info* EROFS_SB (struct super_block*) ;
 int erofs_shrinker_unregister (struct super_block*) ;
 int iput (int *) ;

__attribute__((used)) static void erofs_put_super(struct super_block *sb)
{
 struct erofs_sb_info *const sbi = EROFS_SB(sb);

 DBG_BUGON(!sbi);

 erofs_shrinker_unregister(sb);




}
