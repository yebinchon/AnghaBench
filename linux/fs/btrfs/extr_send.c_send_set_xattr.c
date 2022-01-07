
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct send_ctx {int dummy; } ;
struct fs_path {int dummy; } ;


 int BTRFS_SEND_A_PATH ;
 int BTRFS_SEND_A_XATTR_DATA ;
 int BTRFS_SEND_A_XATTR_NAME ;
 int BTRFS_SEND_C_SET_XATTR ;
 int TLV_PUT (struct send_ctx*,int ,char const*,int) ;
 int TLV_PUT_PATH (struct send_ctx*,int ,struct fs_path*) ;
 int TLV_PUT_STRING (struct send_ctx*,int ,char const*,int) ;
 int begin_cmd (struct send_ctx*,int ) ;
 int send_cmd (struct send_ctx*) ;

__attribute__((used)) static int send_set_xattr(struct send_ctx *sctx,
     struct fs_path *path,
     const char *name, int name_len,
     const char *data, int data_len)
{
 int ret = 0;

 ret = begin_cmd(sctx, BTRFS_SEND_C_SET_XATTR);
 if (ret < 0)
  goto out;

 TLV_PUT_PATH(sctx, BTRFS_SEND_A_PATH, path);
 TLV_PUT_STRING(sctx, BTRFS_SEND_A_XATTR_NAME, name, name_len);
 TLV_PUT(sctx, BTRFS_SEND_A_XATTR_DATA, data, data_len);

 ret = send_cmd(sctx);

tlv_put_failure:
out:
 return ret;
}
