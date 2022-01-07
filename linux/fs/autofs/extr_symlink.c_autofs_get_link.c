
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct dentry {int d_sb; } ;
struct delayed_call {int dummy; } ;
struct autofs_sb_info {int dummy; } ;
struct autofs_info {int last_used; } ;
struct TYPE_2__ {char const* i_private; } ;


 int ECHILD ;
 char const* ERR_PTR (int ) ;
 struct autofs_info* autofs_dentry_ino (struct dentry*) ;
 int autofs_oz_mode (struct autofs_sb_info*) ;
 struct autofs_sb_info* autofs_sbi (int ) ;
 TYPE_1__* d_inode (struct dentry*) ;
 int jiffies ;

__attribute__((used)) static const char *autofs_get_link(struct dentry *dentry,
       struct inode *inode,
       struct delayed_call *done)
{
 struct autofs_sb_info *sbi;
 struct autofs_info *ino;

 if (!dentry)
  return ERR_PTR(-ECHILD);
 sbi = autofs_sbi(dentry->d_sb);
 ino = autofs_dentry_ino(dentry);
 if (ino && !autofs_oz_mode(sbi))
  ino->last_used = jiffies;
 return d_inode(dentry)->i_private;
}
