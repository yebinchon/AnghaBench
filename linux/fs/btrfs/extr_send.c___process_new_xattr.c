
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct send_ctx {int cur_inode_gen; int cur_ino; } ;
struct posix_acl_xattr_header {int a_version; } ;
struct fs_path {int dummy; } ;
struct btrfs_key {int dummy; } ;
typedef int dummy_acl ;


 int ENOMEM ;
 int POSIX_ACL_XATTR_VERSION ;
 int XATTR_NAME_POSIX_ACL_ACCESS ;
 int XATTR_NAME_POSIX_ACL_DEFAULT ;
 int cpu_to_le32 (int ) ;
 struct fs_path* fs_path_alloc () ;
 int fs_path_free (struct fs_path*) ;
 int get_cur_path (struct send_ctx*,int ,int ,struct fs_path*) ;
 int send_set_xattr (struct send_ctx*,struct fs_path*,char const*,int,char const*,int) ;
 int strncmp (char const*,int ,int) ;

__attribute__((used)) static int __process_new_xattr(int num, struct btrfs_key *di_key,
          const char *name, int name_len,
          const char *data, int data_len,
          u8 type, void *ctx)
{
 int ret;
 struct send_ctx *sctx = ctx;
 struct fs_path *p;
 struct posix_acl_xattr_header dummy_acl;

 p = fs_path_alloc();
 if (!p)
  return -ENOMEM;







 if (!strncmp(name, XATTR_NAME_POSIX_ACL_ACCESS, name_len) ||
     !strncmp(name, XATTR_NAME_POSIX_ACL_DEFAULT, name_len)) {
  if (data_len == 0) {
   dummy_acl.a_version =
     cpu_to_le32(POSIX_ACL_XATTR_VERSION);
   data = (char *)&dummy_acl;
   data_len = sizeof(dummy_acl);
  }
 }

 ret = get_cur_path(sctx, sctx->cur_ino, sctx->cur_inode_gen, p);
 if (ret < 0)
  goto out;

 ret = send_set_xattr(sctx, p, name, name_len, data, data_len);

out:
 fs_path_free(p);
 return ret;
}
