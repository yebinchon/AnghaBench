
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int u8 ;
struct extent_buffer {unsigned long len; struct btrfs_fs_info* fs_info; } ;
struct btrfs_fs_info {int csum_shash; } ;
struct TYPE_6__ {int tfm; } ;


 unsigned long BTRFS_CSUM_SIZE ;
 int SHASH_DESC_ON_STACK (TYPE_1__*,int ) ;
 scalar_t__ WARN_ON (int) ;
 int crypto_shash_final (TYPE_1__*,int *) ;
 int crypto_shash_init (TYPE_1__*) ;
 int crypto_shash_update (TYPE_1__*,char*,unsigned long) ;
 int map_private_extent_buffer (struct extent_buffer*,unsigned long,int,char**,unsigned long*,unsigned long*) ;
 int memset (int *,int ,unsigned long) ;
 unsigned long min (unsigned long,unsigned long) ;
 TYPE_1__* shash ;

__attribute__((used)) static int csum_tree_block(struct extent_buffer *buf, u8 *result)
{
 struct btrfs_fs_info *fs_info = buf->fs_info;
 SHASH_DESC_ON_STACK(shash, fs_info->csum_shash);
 unsigned long len;
 unsigned long cur_len;
 unsigned long offset = BTRFS_CSUM_SIZE;
 char *kaddr;
 unsigned long map_start;
 unsigned long map_len;
 int err;

 shash->tfm = fs_info->csum_shash;
 crypto_shash_init(shash);

 len = buf->len - offset;

 while (len > 0) {






  err = map_private_extent_buffer(buf, offset, 32,
     &kaddr, &map_start, &map_len);
  if (WARN_ON(err))
   return err;
  cur_len = min(len, map_len - (offset - map_start));
  crypto_shash_update(shash, kaddr + offset - map_start, cur_len);
  len -= cur_len;
  offset += cur_len;
 }
 memset(result, 0, BTRFS_CSUM_SIZE);

 crypto_shash_final(shash, result);

 return 0;
}
