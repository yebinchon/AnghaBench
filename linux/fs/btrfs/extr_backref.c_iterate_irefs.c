
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct btrfs_root {int dummy; } ;
struct btrfs_path {int dummy; } ;
typedef int iterate_irefs_t ;


 int ENOENT ;
 int iterate_inode_extrefs (int ,struct btrfs_root*,struct btrfs_path*,int *,void*) ;
 int iterate_inode_refs (int ,struct btrfs_root*,struct btrfs_path*,int *,void*) ;

__attribute__((used)) static int iterate_irefs(u64 inum, struct btrfs_root *fs_root,
    struct btrfs_path *path, iterate_irefs_t *iterate,
    void *ctx)
{
 int ret;
 int found_refs = 0;

 ret = iterate_inode_refs(inum, fs_root, path, iterate, ctx);
 if (!ret)
  ++found_refs;
 else if (ret != -ENOENT)
  return ret;

 ret = iterate_inode_extrefs(inum, fs_root, path, iterate, ctx);
 if (ret == -ENOENT && found_refs)
  return 0;

 return ret;
}
