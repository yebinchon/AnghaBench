
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int i_sb; } ;
struct btrfs_fs_info {int dummy; } ;
struct TYPE_2__ {int prop_compress; int flags; } ;


 int BTRFS_COMPRESS_LZO ;
 int BTRFS_COMPRESS_NONE ;
 int BTRFS_COMPRESS_ZLIB ;
 int BTRFS_COMPRESS_ZSTD ;
 TYPE_1__* BTRFS_I (struct inode*) ;
 int BTRFS_INODE_COMPRESS ;
 int BTRFS_INODE_NOCOMPRESS ;
 int COMPRESS_LZO ;
 int COMPRESS_ZSTD ;
 int EINVAL ;
 struct btrfs_fs_info* btrfs_sb (int ) ;
 int btrfs_set_fs_incompat (struct btrfs_fs_info*,int ) ;
 int strncmp (char*,char const*,int) ;

__attribute__((used)) static int prop_compression_apply(struct inode *inode, const char *value,
      size_t len)
{
 struct btrfs_fs_info *fs_info = btrfs_sb(inode->i_sb);
 int type;

 if (len == 0) {
  BTRFS_I(inode)->flags |= BTRFS_INODE_NOCOMPRESS;
  BTRFS_I(inode)->flags &= ~BTRFS_INODE_COMPRESS;
  BTRFS_I(inode)->prop_compress = BTRFS_COMPRESS_NONE;

  return 0;
 }

 if (!strncmp("lzo", value, 3)) {
  type = BTRFS_COMPRESS_LZO;
  btrfs_set_fs_incompat(fs_info, COMPRESS_LZO);
 } else if (!strncmp("zlib", value, 4)) {
  type = BTRFS_COMPRESS_ZLIB;
 } else if (!strncmp("zstd", value, 4)) {
  type = BTRFS_COMPRESS_ZSTD;
  btrfs_set_fs_incompat(fs_info, COMPRESS_ZSTD);
 } else {
  return -EINVAL;
 }

 BTRFS_I(inode)->flags &= ~BTRFS_INODE_NOCOMPRESS;
 BTRFS_I(inode)->flags |= BTRFS_INODE_COMPRESS;
 BTRFS_I(inode)->prop_compress = type;

 return 0;
}
