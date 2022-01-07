
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct posix_acl {int a_count; } ;
struct inode {int i_mode; } ;
struct btrfs_trans_handle {int dummy; } ;




 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int S_ISDIR (int ) ;
 char* XATTR_NAME_POSIX_ACL_ACCESS ;
 char* XATTR_NAME_POSIX_ACL_DEFAULT ;
 int btrfs_setxattr (struct btrfs_trans_handle*,struct inode*,char const*,char*,int,int ) ;
 int btrfs_setxattr_trans (struct inode*,char const*,char*,int,int ) ;
 int init_user_ns ;
 int kfree (char*) ;
 char* kmalloc (int,int ) ;
 int memalloc_nofs_restore (unsigned int) ;
 unsigned int memalloc_nofs_save () ;
 int posix_acl_to_xattr (int *,struct posix_acl*,char*,int) ;
 int posix_acl_xattr_size (int ) ;
 int set_cached_acl (struct inode*,int,struct posix_acl*) ;

__attribute__((used)) static int __btrfs_set_acl(struct btrfs_trans_handle *trans,
    struct inode *inode, struct posix_acl *acl, int type)
{
 int ret, size = 0;
 const char *name;
 char *value = ((void*)0);

 switch (type) {
 case 129:
  name = XATTR_NAME_POSIX_ACL_ACCESS;
  break;
 case 128:
  if (!S_ISDIR(inode->i_mode))
   return acl ? -EINVAL : 0;
  name = XATTR_NAME_POSIX_ACL_DEFAULT;
  break;
 default:
  return -EINVAL;
 }

 if (acl) {
  unsigned int nofs_flag;

  size = posix_acl_xattr_size(acl->a_count);




  nofs_flag = memalloc_nofs_save();
  value = kmalloc(size, GFP_KERNEL);
  memalloc_nofs_restore(nofs_flag);
  if (!value) {
   ret = -ENOMEM;
   goto out;
  }

  ret = posix_acl_to_xattr(&init_user_ns, acl, value, size);
  if (ret < 0)
   goto out;
 }

 if (trans)
  ret = btrfs_setxattr(trans, inode, name, value, size, 0);
 else
  ret = btrfs_setxattr_trans(inode, name, value, size, 0);

out:
 kfree(value);

 if (!ret)
  set_cached_acl(inode, type, acl);

 return ret;
}
