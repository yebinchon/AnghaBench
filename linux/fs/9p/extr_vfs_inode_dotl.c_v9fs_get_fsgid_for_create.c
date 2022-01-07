
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_mode; int i_gid; } ;
typedef int kgid_t ;


 int BUG_ON (int ) ;
 int S_ISGID ;
 int current_fsgid () ;

__attribute__((used)) static kgid_t v9fs_get_fsgid_for_create(struct inode *dir_inode)
{
 BUG_ON(dir_inode == ((void*)0));

 if (dir_inode->i_mode & S_ISGID) {

  return dir_inode->i_gid;
 }
 return current_fsgid();
}
