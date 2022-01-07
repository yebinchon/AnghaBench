
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
typedef int u16 ;
struct page {int dummy; } ;
struct compressed_bio {unsigned long nr_pages; int mirror_num; struct page** compressed_pages; int * sums; } ;
struct btrfs_inode {int flags; TYPE_1__* root; } ;
struct btrfs_fs_info {int csum_shash; int super_copy; } ;
struct TYPE_8__ {int tfm; } ;
struct TYPE_7__ {struct btrfs_fs_info* fs_info; } ;


 int BTRFS_CSUM_SIZE ;
 int BTRFS_INODE_NODATASUM ;
 int EIO ;
 int PAGE_SIZE ;
 int SHASH_DESC_ON_STACK (TYPE_2__*,int ) ;
 int btrfs_print_data_csum_error (struct btrfs_inode*,int ,int *,int *,int ) ;
 int btrfs_super_csum_size (int ) ;
 int crypto_shash_final (TYPE_2__*,int *) ;
 int crypto_shash_init (TYPE_2__*) ;
 int crypto_shash_update (TYPE_2__*,char*,int ) ;
 char* kmap_atomic (struct page*) ;
 int kunmap_atomic (char*) ;
 scalar_t__ memcmp (int **,int *,int const) ;
 TYPE_2__* shash ;

__attribute__((used)) static int check_compressed_csum(struct btrfs_inode *inode,
     struct compressed_bio *cb,
     u64 disk_start)
{
 struct btrfs_fs_info *fs_info = inode->root->fs_info;
 SHASH_DESC_ON_STACK(shash, fs_info->csum_shash);
 const u16 csum_size = btrfs_super_csum_size(fs_info->super_copy);
 int ret;
 struct page *page;
 unsigned long i;
 char *kaddr;
 u8 csum[BTRFS_CSUM_SIZE];
 u8 *cb_sum = cb->sums;

 if (inode->flags & BTRFS_INODE_NODATASUM)
  return 0;

 shash->tfm = fs_info->csum_shash;

 for (i = 0; i < cb->nr_pages; i++) {
  page = cb->compressed_pages[i];

  crypto_shash_init(shash);
  kaddr = kmap_atomic(page);
  crypto_shash_update(shash, kaddr, PAGE_SIZE);
  kunmap_atomic(kaddr);
  crypto_shash_final(shash, (u8 *)&csum);

  if (memcmp(&csum, cb_sum, csum_size)) {
   btrfs_print_data_csum_error(inode, disk_start,
     csum, cb_sum, cb->mirror_num);
   ret = -EIO;
   goto fail;
  }
  cb_sum += csum_size;

 }
 ret = 0;
fail:
 return ret;
}
