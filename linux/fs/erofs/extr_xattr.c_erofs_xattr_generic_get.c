
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xattr_handler {int flags; } ;
struct inode {int dummy; } ;
struct erofs_sb_info {int dummy; } ;
struct dentry {int dummy; } ;


 int CAP_SYS_ADMIN ;
 int EINVAL ;
 int EOPNOTSUPP ;
 int EPERM ;
 struct erofs_sb_info* EROFS_I_SB (struct inode*) ;



 int XATTR_USER ;
 int capable (int ) ;
 int erofs_getxattr (struct inode*,int,char const*,void*,size_t) ;
 int test_opt (struct erofs_sb_info* const,int ) ;

__attribute__((used)) static int erofs_xattr_generic_get(const struct xattr_handler *handler,
       struct dentry *unused, struct inode *inode,
       const char *name, void *buffer, size_t size)
{
 struct erofs_sb_info *const sbi = EROFS_I_SB(inode);

 switch (handler->flags) {
 case 128:
  if (!test_opt(sbi, XATTR_USER))
   return -EOPNOTSUPP;
  break;
 case 129:
  if (!capable(CAP_SYS_ADMIN))
   return -EPERM;
  break;
 case 130:
  break;
 default:
  return -EINVAL;
 }

 return erofs_getxattr(inode, handler->flags, name, buffer, size);
}
