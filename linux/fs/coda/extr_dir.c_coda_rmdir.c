
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int i_sb; } ;
struct TYPE_2__ {char* name; int len; } ;
struct dentry {TYPE_1__ d_name; } ;


 int clear_nlink (int ) ;
 int coda_dir_drop_nlink (struct inode*) ;
 int coda_dir_update_mtime (struct inode*) ;
 int coda_i2f (struct inode*) ;
 int d_inode (struct dentry*) ;
 scalar_t__ d_really_is_positive (struct dentry*) ;
 int venus_rmdir (int ,int ,char const*,int) ;

__attribute__((used)) static int coda_rmdir(struct inode *dir, struct dentry *de)
{
 const char *name = de->d_name.name;
 int len = de->d_name.len;
 int error;

 error = venus_rmdir(dir->i_sb, coda_i2f(dir), name, len);
 if (!error) {

  if (d_really_is_positive(de))
   clear_nlink(d_inode(de));


  coda_dir_drop_nlink(dir);
  coda_dir_update_mtime(dir);
 }
 return error;
}
