
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iattr {int ia_valid; } ;
struct dentry {int dummy; } ;


 int ATTR_GID ;
 int ATTR_MODE ;
 int ATTR_UID ;
 int LOCKDOWN_DEBUGFS ;
 int security_locked_down (int ) ;
 int simple_setattr (struct dentry*,struct iattr*) ;

__attribute__((used)) static int debugfs_setattr(struct dentry *dentry, struct iattr *ia)
{
 int ret = security_locked_down(LOCKDOWN_DEBUGFS);

 if (ret && (ia->ia_valid & (ATTR_MODE | ATTR_UID | ATTR_GID)))
  return ret;
 return simple_setattr(dentry, ia);
}
