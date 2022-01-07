
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {scalar_t__ i_nlink; int i_lock; } ;


 int drop_nlink (struct inode*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void
cifs_drop_nlink(struct inode *inode)
{
 spin_lock(&inode->i_lock);
 if (inode->i_nlink > 0)
  drop_nlink(inode);
 spin_unlock(&inode->i_lock);
}
