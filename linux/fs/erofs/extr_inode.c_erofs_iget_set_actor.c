
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_ino; } ;
typedef int erofs_nid_t ;


 int erofs_inode_hash (int const) ;

__attribute__((used)) static int erofs_iget_set_actor(struct inode *inode, void *opaque)
{
 const erofs_nid_t nid = *(erofs_nid_t *)opaque;

 inode->i_ino = erofs_inode_hash(nid);
 return 0;
}
