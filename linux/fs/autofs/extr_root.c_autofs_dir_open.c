
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct TYPE_2__ {struct dentry* dentry; } ;
struct file {TYPE_1__ f_path; } ;
struct dentry {int d_sb; } ;
struct autofs_sb_info {int lookup_lock; } ;


 int ENOENT ;
 scalar_t__ autofs_oz_mode (struct autofs_sb_info*) ;
 struct autofs_sb_info* autofs_sbi (int ) ;
 int dcache_dir_open (struct inode*,struct file*) ;
 int path_is_mountpoint (TYPE_1__*) ;
 int pr_debug (char*,struct file*,struct dentry*,struct dentry*) ;
 scalar_t__ simple_empty (struct dentry*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int autofs_dir_open(struct inode *inode, struct file *file)
{
 struct dentry *dentry = file->f_path.dentry;
 struct autofs_sb_info *sbi = autofs_sbi(dentry->d_sb);

 pr_debug("file=%p dentry=%p %pd\n", file, dentry, dentry);

 if (autofs_oz_mode(sbi))
  goto out;
 spin_lock(&sbi->lookup_lock);
 if (!path_is_mountpoint(&file->f_path) && simple_empty(dentry)) {
  spin_unlock(&sbi->lookup_lock);
  return -ENOENT;
 }
 spin_unlock(&sbi->lookup_lock);

out:
 return dcache_dir_open(inode, file);
}
