
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vattr ;
struct inode {int i_sb; int i_ctime; } ;
struct iattr {int dummy; } ;
struct dentry {int dummy; } ;
struct coda_vattr {int va_type; } ;


 int C_VNON ;
 int coda_cache_clear_inode (struct inode*) ;
 int coda_i2f (struct inode*) ;
 int coda_iattr_to_vattr (struct iattr*,struct coda_vattr*) ;
 int coda_vattr_to_iattr (struct inode*,struct coda_vattr*) ;
 int current_time (struct inode*) ;
 struct inode* d_inode (struct dentry*) ;
 int memset (struct coda_vattr*,int ,int) ;
 int venus_setattr (int ,int ,struct coda_vattr*) ;

int coda_setattr(struct dentry *de, struct iattr *iattr)
{
 struct inode *inode = d_inode(de);
 struct coda_vattr vattr;
 int error;

 memset(&vattr, 0, sizeof(vattr));

 inode->i_ctime = current_time(inode);
 coda_iattr_to_vattr(iattr, &vattr);
 vattr.va_type = C_VNON;


 error = venus_setattr(inode->i_sb, coda_i2f(inode), &vattr);

 if (!error) {
         coda_vattr_to_iattr(inode, &vattr);
  coda_cache_clear_inode(inode);
 }
 return error;
}
