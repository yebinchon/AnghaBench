
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int * s_fs_info; } ;
struct bfs_sb_info {int bfs_lock; } ;


 struct bfs_sb_info* BFS_SB (struct super_block*) ;
 int kfree (struct bfs_sb_info*) ;
 int mutex_destroy (int *) ;

__attribute__((used)) static void bfs_put_super(struct super_block *s)
{
 struct bfs_sb_info *info = BFS_SB(s);

 if (!info)
  return;

 mutex_destroy(&info->bfs_lock);
 kfree(info);
 s->s_fs_info = ((void*)0);
}
