
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int umode_t ;
struct inode {int i_sb; } ;
struct TYPE_2__ {char* name; int len; } ;
struct dentry {TYPE_1__ d_name; } ;
struct coda_vattr {int va_mode; } ;
struct CodaFid {int dummy; } ;


 int EPERM ;
 scalar_t__ IS_ERR (struct inode*) ;
 int PTR_ERR (struct inode*) ;
 int coda_dir_inc_nlink (struct inode*) ;
 int coda_dir_update_mtime (struct inode*) ;
 int coda_i2f (struct inode*) ;
 struct inode* coda_iget (int ,struct CodaFid*,struct coda_vattr*) ;
 scalar_t__ coda_iscontrol (char const*,int) ;
 int d_drop (struct dentry*) ;
 int d_instantiate (struct dentry*,struct inode*) ;
 scalar_t__ is_root_inode (struct inode*) ;
 int venus_mkdir (int ,int ,char const*,int,struct CodaFid*,struct coda_vattr*) ;

__attribute__((used)) static int coda_mkdir(struct inode *dir, struct dentry *de, umode_t mode)
{
 struct inode *inode;
 struct coda_vattr attrs;
 const char *name = de->d_name.name;
 int len = de->d_name.len;
 int error;
 struct CodaFid newfid;

 if (is_root_inode(dir) && coda_iscontrol(name, len))
  return -EPERM;

 attrs.va_mode = mode;
 error = venus_mkdir(dir->i_sb, coda_i2f(dir),
          name, len, &newfid, &attrs);
 if (error)
  goto err_out;

 inode = coda_iget(dir->i_sb, &newfid, &attrs);
 if (IS_ERR(inode)) {
  error = PTR_ERR(inode);
  goto err_out;
 }


 coda_dir_inc_nlink(dir);
 coda_dir_update_mtime(dir);
 d_instantiate(de, inode);
 return 0;
err_out:
 d_drop(de);
 return error;
}
