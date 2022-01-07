
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct send_ctx {int cmp_key; int right_path; int parent_root; } ;
struct btrfs_key {int dummy; } ;


 int ENOENT ;
 int __process_new_xattr (int,struct btrfs_key*,char const*,int,char const*,int,int ,void*) ;
 int find_xattr (int ,int ,int ,char const*,int,char**,int*) ;
 int kfree (char*) ;
 scalar_t__ memcmp (char const*,char*,int) ;

__attribute__((used)) static int __process_changed_new_xattr(int num, struct btrfs_key *di_key,
           const char *name, int name_len,
           const char *data, int data_len,
           u8 type, void *ctx)
{
 int ret;
 struct send_ctx *sctx = ctx;
 char *found_data = ((void*)0);
 int found_data_len = 0;

 ret = find_xattr(sctx->parent_root, sctx->right_path,
    sctx->cmp_key, name, name_len, &found_data,
    &found_data_len);
 if (ret == -ENOENT) {
  ret = __process_new_xattr(num, di_key, name, name_len, data,
    data_len, type, ctx);
 } else if (ret >= 0) {
  if (data_len != found_data_len ||
      memcmp(data, found_data, data_len)) {
   ret = __process_new_xattr(num, di_key, name, name_len,
     data, data_len, type, ctx);
  } else {
   ret = 0;
  }
 }

 kfree(found_data);
 return ret;
}
