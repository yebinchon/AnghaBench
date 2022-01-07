
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int len; int name; } ;
struct dentry {TYPE_2__ d_name; struct dentry* d_parent; } ;
struct autofs_sb_info {int fs_lock; TYPE_1__* sb; } ;
struct TYPE_3__ {struct dentry* s_root; } ;


 int NAME_MAX ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 unsigned int read_seqbegin (int *) ;
 scalar_t__ read_seqretry (int *,unsigned int) ;
 int rename_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int strncpy (char*,int ,int) ;

__attribute__((used)) static int autofs_getpath(struct autofs_sb_info *sbi,
     struct dentry *dentry, char *name)
{
 struct dentry *root = sbi->sb->s_root;
 struct dentry *tmp;
 char *buf;
 char *p;
 int len;
 unsigned seq;

rename_retry:
 buf = name;
 len = 0;

 seq = read_seqbegin(&rename_lock);
 rcu_read_lock();
 spin_lock(&sbi->fs_lock);
 for (tmp = dentry ; tmp != root ; tmp = tmp->d_parent)
  len += tmp->d_name.len + 1;

 if (!len || --len > NAME_MAX) {
  spin_unlock(&sbi->fs_lock);
  rcu_read_unlock();
  if (read_seqretry(&rename_lock, seq))
   goto rename_retry;
  return 0;
 }

 *(buf + len) = '\0';
 p = buf + len - dentry->d_name.len;
 strncpy(p, dentry->d_name.name, dentry->d_name.len);

 for (tmp = dentry->d_parent; tmp != root ; tmp = tmp->d_parent) {
  *(--p) = '/';
  p -= tmp->d_name.len;
  strncpy(p, tmp->d_name.name, tmp->d_name.len);
 }
 spin_unlock(&sbi->fs_lock);
 rcu_read_unlock();
 if (read_seqretry(&rename_lock, seq))
  goto rename_retry;

 return len;
}
