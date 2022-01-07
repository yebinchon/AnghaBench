
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_path {int search_commit_root; int skip_locking; int need_commit_sem; } ;


 struct btrfs_path* btrfs_alloc_path () ;

__attribute__((used)) static struct btrfs_path *alloc_path_for_send(void)
{
 struct btrfs_path *path;

 path = btrfs_alloc_path();
 if (!path)
  return ((void*)0);
 path->search_commit_root = 1;
 path->skip_locking = 1;
 path->need_commit_sem = 1;
 return path;
}
