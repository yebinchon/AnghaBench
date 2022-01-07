
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct find_xattr_ctx {char const* name; int name_len; int found_idx; char* found_data; int found_data_len; } ;
struct btrfs_root {int dummy; } ;
struct btrfs_path {int dummy; } ;
struct btrfs_key {int dummy; } ;


 int ENOENT ;
 int __find_xattr ;
 int iterate_dir_item (struct btrfs_root*,struct btrfs_path*,int ,struct find_xattr_ctx*) ;
 int kfree (char*) ;

__attribute__((used)) static int find_xattr(struct btrfs_root *root,
        struct btrfs_path *path,
        struct btrfs_key *key,
        const char *name, int name_len,
        char **data, int *data_len)
{
 int ret;
 struct find_xattr_ctx ctx;

 ctx.name = name;
 ctx.name_len = name_len;
 ctx.found_idx = -1;
 ctx.found_data = ((void*)0);
 ctx.found_data_len = 0;

 ret = iterate_dir_item(root, path, __find_xattr, &ctx);
 if (ret < 0)
  return ret;

 if (ctx.found_idx == -1)
  return -ENOENT;
 if (data) {
  *data = ctx.found_data;
  *data_len = ctx.found_data_len;
 } else {
  kfree(ctx.found_data);
 }
 return ctx.found_idx;
}
