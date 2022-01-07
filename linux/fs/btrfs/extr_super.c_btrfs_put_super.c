
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;


 int btrfs_sb (struct super_block*) ;
 int close_ctree (int ) ;

__attribute__((used)) static void btrfs_put_super(struct super_block *sb)
{
 close_ctree(btrfs_sb(sb));
}
