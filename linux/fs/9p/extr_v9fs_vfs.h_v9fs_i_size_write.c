
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_lock; } ;
typedef int loff_t ;
typedef int i_size ;


 int i_size_write (struct inode*,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static inline void v9fs_i_size_write(struct inode *inode, loff_t i_size)
{





 if (sizeof(i_size) > sizeof(long))
  spin_lock(&inode->i_lock);
 i_size_write(inode, i_size);
 if (sizeof(i_size) > sizeof(long))
  spin_unlock(&inode->i_lock);
}
