
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct prop_handler {int (* apply ) (struct inode*,char const*,size_t) ;int xattr_name; } ;
struct inode {int dummy; } ;
struct TYPE_4__ {int objectid; } ;
struct btrfs_root {TYPE_1__ root_key; int fs_info; } ;
struct TYPE_5__ {int runtime_flags; struct btrfs_root* root; } ;


 TYPE_2__* BTRFS_I (struct inode*) ;
 int BTRFS_INODE_HAS_PROPS ;
 int btrfs_ino (TYPE_2__*) ;
 int btrfs_warn (int ,char*,int ,int ,int ,int) ;
 int set_bit (int ,int *) ;
 int stub1 (struct inode*,char const*,size_t) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void inode_prop_iterator(void *ctx,
    const struct prop_handler *handler,
    const char *value,
    size_t len)
{
 struct inode *inode = ctx;
 struct btrfs_root *root = BTRFS_I(inode)->root;
 int ret;

 ret = handler->apply(inode, value, len);
 if (unlikely(ret))
  btrfs_warn(root->fs_info,
      "error applying prop %s to ino %llu (root %llu): %d",
      handler->xattr_name, btrfs_ino(BTRFS_I(inode)),
      root->root_key.objectid, ret);
 else
  set_bit(BTRFS_INODE_HAS_PROPS, &BTRFS_I(inode)->runtime_flags);
}
