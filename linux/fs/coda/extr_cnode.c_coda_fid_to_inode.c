
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct inode {int i_state; } ;
struct CodaFid {int dummy; } ;


 int BUG_ON (int) ;
 int I_NEW ;
 unsigned long coda_f2i (struct CodaFid*) ;
 int coda_test_inode ;
 struct inode* ilookup5 (struct super_block*,unsigned long,int ,struct CodaFid*) ;

struct inode *coda_fid_to_inode(struct CodaFid *fid, struct super_block *sb)
{
 struct inode *inode;
 unsigned long hash = coda_f2i(fid);

 inode = ilookup5(sb, hash, coda_test_inode, fid);
 if ( !inode )
  return ((void*)0);



 BUG_ON(inode->i_state & I_NEW);

 return inode;
}
