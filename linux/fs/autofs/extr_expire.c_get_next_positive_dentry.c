
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int d_lock; struct dentry* d_parent; int d_sb; } ;
struct autofs_sb_info {int lookup_lock; } ;


 struct autofs_sb_info* autofs_sbi (int ) ;
 struct dentry* dget (struct dentry*) ;
 int dput (struct dentry*) ;
 struct dentry* positive_after (struct dentry*,struct dentry*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static struct dentry *get_next_positive_dentry(struct dentry *prev,
            struct dentry *root)
{
 struct autofs_sb_info *sbi = autofs_sbi(root->d_sb);
 struct dentry *p = prev, *ret = ((void*)0), *d = ((void*)0);

 if (prev == ((void*)0))
  return dget(root);

 spin_lock(&sbi->lookup_lock);
 spin_lock(&p->d_lock);
 while (1) {
  struct dentry *parent;

  ret = positive_after(p, d);
  if (ret || p == root)
   break;
  parent = p->d_parent;
  spin_unlock(&p->d_lock);
  spin_lock(&parent->d_lock);
  d = p;
  p = parent;
 }
 spin_unlock(&p->d_lock);
 spin_unlock(&sbi->lookup_lock);
 dput(prev);
 return ret;
}
