
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode_fs_paths {int fspath; } ;


 int kfree (struct inode_fs_paths*) ;
 int kvfree (int ) ;

void free_ipath(struct inode_fs_paths *ipath)
{
 if (!ipath)
  return;
 kvfree(ipath->fspath);
 kfree(ipath);
}
