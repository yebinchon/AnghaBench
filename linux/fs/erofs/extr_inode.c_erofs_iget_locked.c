
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct inode {int dummy; } ;
typedef int erofs_nid_t ;


 int erofs_iget_set_actor ;
 int erofs_ilookup_test_actor ;
 unsigned long erofs_inode_hash (int ) ;
 struct inode* iget5_locked (struct super_block*,unsigned long const,int ,int ,int *) ;

__attribute__((used)) static inline struct inode *erofs_iget_locked(struct super_block *sb,
           erofs_nid_t nid)
{
 const unsigned long hashval = erofs_inode_hash(nid);

 return iget5_locked(sb, hashval, erofs_ilookup_test_actor,
  erofs_iget_set_actor, &nid);
}
