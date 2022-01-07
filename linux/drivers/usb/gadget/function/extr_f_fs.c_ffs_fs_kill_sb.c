
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {scalar_t__ s_fs_info; } ;


 int ENTER () ;
 int ffs_data_closed (scalar_t__) ;
 int ffs_release_dev (scalar_t__) ;
 int kill_litter_super (struct super_block*) ;

__attribute__((used)) static void
ffs_fs_kill_sb(struct super_block *sb)
{
 ENTER();

 kill_litter_super(sb);
 if (sb->s_fs_info) {
  ffs_release_dev(sb->s_fs_info);
  ffs_data_closed(sb->s_fs_info);
 }
}
