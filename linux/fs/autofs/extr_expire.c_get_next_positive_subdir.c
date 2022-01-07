
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int d_lock; int d_sb; } ;
struct autofs_sb_info {int lookup_lock; } ;


 struct autofs_sb_info* autofs_sbi (int ) ;
 int dput (struct dentry*) ;
 struct dentry* positive_after (struct dentry*,struct dentry*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static struct dentry *get_next_positive_subdir(struct dentry *prev,
            struct dentry *root)
{
 struct autofs_sb_info *sbi = autofs_sbi(root->d_sb);
 struct dentry *q;

 spin_lock(&sbi->lookup_lock);
 spin_lock(&root->d_lock);
 q = positive_after(root, prev);
 spin_unlock(&root->d_lock);
 spin_unlock(&sbi->lookup_lock);
 dput(prev);
 return q;
}
