
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_super_block {int dummy; } ;
struct btrfs_fs_info {int dummy; } ;


 int BTRFS_CSUM_TYPE_CRC32 ;
 int BTRFS_FEATURE_INCOMPAT_SUPP ;
 int EUCLEAN ;
 int btrfs_err (struct btrfs_fs_info*,char*,...) ;
 int btrfs_super_csum_type (struct btrfs_super_block*) ;
 int btrfs_super_incompat_flags (struct btrfs_super_block*) ;
 int btrfs_supported_super_csum (int ) ;
 int validate_super (struct btrfs_fs_info*,struct btrfs_super_block*,int) ;

__attribute__((used)) static int btrfs_validate_write_super(struct btrfs_fs_info *fs_info,
          struct btrfs_super_block *sb)
{
 int ret;

 ret = validate_super(fs_info, sb, -1);
 if (ret < 0)
  goto out;
 if (!btrfs_supported_super_csum(btrfs_super_csum_type(sb))) {
  ret = -EUCLEAN;
  btrfs_err(fs_info, "invalid csum type, has %u want %u",
     btrfs_super_csum_type(sb), BTRFS_CSUM_TYPE_CRC32);
  goto out;
 }
 if (btrfs_super_incompat_flags(sb) & ~BTRFS_FEATURE_INCOMPAT_SUPP) {
  ret = -EUCLEAN;
  btrfs_err(fs_info,
  "invalid incompat flags, has 0x%llx valid mask 0x%llx",
     btrfs_super_incompat_flags(sb),
     (unsigned long long)BTRFS_FEATURE_INCOMPAT_SUPP);
  goto out;
 }
out:
 if (ret < 0)
  btrfs_err(fs_info,
  "super block corruption detected before writing it to disk");
 return ret;
}
