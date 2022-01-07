
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int substring_t ;
struct super_block {int dummy; } ;


 int erofs_info (struct super_block*,char*) ;

__attribute__((used)) static int erofs_build_cache_strategy(struct super_block *sb,
          substring_t *args)
{
 erofs_info(sb, "EROFS compression is disabled, so cache strategy is ignored");
 return 0;
}
