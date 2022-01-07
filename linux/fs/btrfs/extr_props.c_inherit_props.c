
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct prop_handler {char* (* extract ) (struct inode*) ;int (* validate ) (char const*,int ) ;int (* apply ) (struct inode*,char const*,int ) ;int xattr_name; int inheritable; } ;
struct inode {int dummy; } ;
struct btrfs_trans_handle {int block_rsv; } ;
struct btrfs_root {struct btrfs_fs_info* fs_info; } ;
struct btrfs_fs_info {int dummy; } ;
struct TYPE_2__ {int runtime_flags; struct btrfs_root* root; } ;


 int ARRAY_SIZE (struct prop_handler*) ;
 TYPE_1__* BTRFS_I (struct inode*) ;
 int BTRFS_INODE_HAS_PROPS ;
 int BTRFS_RESERVE_NO_FLUSH ;
 int btrfs_block_rsv_add (struct btrfs_root*,int ,int ,int ) ;
 int btrfs_block_rsv_release (struct btrfs_fs_info*,int ,int ) ;
 int btrfs_calc_insert_metadata_size (struct btrfs_fs_info*,int) ;
 int btrfs_setxattr (struct btrfs_trans_handle*,struct inode*,int ,char const*,int ,int ) ;
 struct prop_handler* prop_handlers ;
 int set_bit (int ,int *) ;
 int strlen (char const*) ;
 char* stub1 (struct inode*) ;
 int stub2 (char const*,int ) ;
 int stub3 (struct inode*,char const*,int ) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static int inherit_props(struct btrfs_trans_handle *trans,
    struct inode *inode,
    struct inode *parent)
{
 struct btrfs_root *root = BTRFS_I(inode)->root;
 struct btrfs_fs_info *fs_info = root->fs_info;
 int ret;
 int i;
 bool need_reserve = 0;

 if (!test_bit(BTRFS_INODE_HAS_PROPS,
        &BTRFS_I(parent)->runtime_flags))
  return 0;

 for (i = 0; i < ARRAY_SIZE(prop_handlers); i++) {
  const struct prop_handler *h = &prop_handlers[i];
  const char *value;
  u64 num_bytes = 0;

  if (!h->inheritable)
   continue;

  value = h->extract(parent);
  if (!value)
   continue;





  ret = h->validate(value, strlen(value));
  if (ret)
   continue;
  if (need_reserve) {
   num_bytes = btrfs_calc_insert_metadata_size(fs_info, 1);
   ret = btrfs_block_rsv_add(root, trans->block_rsv,
     num_bytes, BTRFS_RESERVE_NO_FLUSH);
   if (ret)
    return ret;
  }

  ret = btrfs_setxattr(trans, inode, h->xattr_name, value,
         strlen(value), 0);
  if (!ret) {
   ret = h->apply(inode, value, strlen(value));
   if (ret)
    btrfs_setxattr(trans, inode, h->xattr_name,
            ((void*)0), 0, 0);
   else
    set_bit(BTRFS_INODE_HAS_PROPS,
     &BTRFS_I(inode)->runtime_flags);
  }

  if (need_reserve) {
   btrfs_block_rsv_release(fs_info, trans->block_rsv,
     num_bytes);
   if (ret)
    return ret;
  }
  need_reserve = 1;
 }

 return 0;
}
