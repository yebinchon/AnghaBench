
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct pts_fs_info {int allocated_ptys; } ;


 struct pts_fs_info* DEVPTS_SB (struct super_block*) ;
 int ida_destroy (int *) ;
 int kfree (struct pts_fs_info*) ;
 int kill_litter_super (struct super_block*) ;

__attribute__((used)) static void devpts_kill_sb(struct super_block *sb)
{
 struct pts_fs_info *fsi = DEVPTS_SB(sb);

 if (fsi)
  ida_destroy(&fsi->allocated_ptys);
 kfree(fsi);
 kill_litter_super(sb);
}
