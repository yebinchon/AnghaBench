
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_private; } ;


 int clear_inode (struct inode*) ;
 int kfree (int ) ;

__attribute__((used)) static void autofs_evict_inode(struct inode *inode)
{
 clear_inode(inode);
 kfree(inode->i_private);
}
