
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dentry {int d_parent; int d_inode; int * d_fsdata; TYPE_1__* d_sb; } ;
struct TYPE_2__ {scalar_t__ s_magic; } ;


 scalar_t__ DEVPTS_SUPER_MAGIC ;
 int WARN_ON_ONCE (int) ;
 int d_drop (struct dentry*) ;
 int d_inode (int ) ;
 int dput (struct dentry*) ;
 int drop_nlink (int ) ;
 int fsnotify_unlink (int ,struct dentry*) ;

void devpts_pty_kill(struct dentry *dentry)
{
 WARN_ON_ONCE(dentry->d_sb->s_magic != DEVPTS_SUPER_MAGIC);

 dentry->d_fsdata = ((void*)0);
 drop_nlink(dentry->d_inode);
 fsnotify_unlink(d_inode(dentry->d_parent), dentry);
 d_drop(dentry);
 dput(dentry);
}
