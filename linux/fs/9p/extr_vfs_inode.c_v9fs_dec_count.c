
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_nlink; int i_mode; } ;


 int S_ISDIR (int ) ;
 int drop_nlink (struct inode*) ;

__attribute__((used)) static void v9fs_dec_count(struct inode *inode)
{
 if (!S_ISDIR(inode->i_mode) || inode->i_nlink > 2)
  drop_nlink(inode);
}
