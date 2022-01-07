
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct send_ctx {int cmp_key; int left_path; int send_root; } ;
struct btrfs_key {int dummy; } ;


 int ENOENT ;
 int __process_deleted_xattr (int,struct btrfs_key*,char const*,int,char const*,int,int ,void*) ;
 int find_xattr (int ,int ,int ,char const*,int,int *,int *) ;

__attribute__((used)) static int __process_changed_deleted_xattr(int num, struct btrfs_key *di_key,
        const char *name, int name_len,
        const char *data, int data_len,
        u8 type, void *ctx)
{
 int ret;
 struct send_ctx *sctx = ctx;

 ret = find_xattr(sctx->send_root, sctx->left_path, sctx->cmp_key,
    name, name_len, ((void*)0), ((void*)0));
 if (ret == -ENOENT)
  ret = __process_deleted_xattr(num, di_key, name, name_len, data,
    data_len, type, ctx);
 else if (ret >= 0)
  ret = 0;

 return ret;
}
