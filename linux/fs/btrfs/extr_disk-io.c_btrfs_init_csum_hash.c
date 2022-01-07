
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct crypto_shash {int dummy; } ;
struct btrfs_fs_info {struct crypto_shash* csum_shash; } ;


 scalar_t__ IS_ERR (struct crypto_shash*) ;
 int PTR_ERR (struct crypto_shash*) ;
 int btrfs_err (struct btrfs_fs_info*,char*,char const*) ;
 char* btrfs_super_csum_name (int ) ;
 struct crypto_shash* crypto_alloc_shash (char const*,int ,int ) ;

__attribute__((used)) static int btrfs_init_csum_hash(struct btrfs_fs_info *fs_info, u16 csum_type)
{
 struct crypto_shash *csum_shash;
 const char *csum_name = btrfs_super_csum_name(csum_type);

 csum_shash = crypto_alloc_shash(csum_name, 0, 0);

 if (IS_ERR(csum_shash)) {
  btrfs_err(fs_info, "error allocating %s hash for checksum",
     csum_name);
  return PTR_ERR(csum_shash);
 }

 fs_info->csum_shash = csum_shash;

 return 0;
}
