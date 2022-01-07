
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct prop_handler {int (* apply ) (struct inode*,char const*,size_t) ;int xattr_name; } ;
struct inode {int dummy; } ;
struct btrfs_trans_handle {int dummy; } ;
struct TYPE_2__ {int runtime_flags; } ;


 int ASSERT (int) ;
 TYPE_1__* BTRFS_I (struct inode*) ;
 int BTRFS_INODE_HAS_PROPS ;
 int EINVAL ;
 int btrfs_setxattr (struct btrfs_trans_handle*,struct inode*,int ,char const*,size_t,int) ;
 struct prop_handler* find_prop_handler (char const*,int *) ;
 int set_bit (int ,int *) ;
 int stub1 (struct inode*,char const*,size_t) ;
 int stub2 (struct inode*,char const*,size_t) ;

int btrfs_set_prop(struct btrfs_trans_handle *trans, struct inode *inode,
     const char *name, const char *value, size_t value_len,
     int flags)
{
 const struct prop_handler *handler;
 int ret;

 handler = find_prop_handler(name, ((void*)0));
 if (!handler)
  return -EINVAL;

 if (value_len == 0) {
  ret = btrfs_setxattr(trans, inode, handler->xattr_name,
         ((void*)0), 0, flags);
  if (ret)
   return ret;

  ret = handler->apply(inode, ((void*)0), 0);
  ASSERT(ret == 0);

  return ret;
 }

 ret = btrfs_setxattr(trans, inode, handler->xattr_name, value,
        value_len, flags);
 if (ret)
  return ret;
 ret = handler->apply(inode, value, value_len);
 if (ret) {
  btrfs_setxattr(trans, inode, handler->xattr_name, ((void*)0),
          0, flags);
  return ret;
 }

 set_bit(BTRFS_INODE_HAS_PROPS, &BTRFS_I(inode)->runtime_flags);

 return 0;
}
