
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {unsigned long i_ino; } ;
struct CodaFid {int dummy; } ;
struct coda_inode_info {struct CodaFid c_fid; } ;


 int BUG_ON (int) ;
 struct coda_inode_info* ITOC (struct inode*) ;
 int __insert_inode_hash (struct inode*,unsigned long) ;
 unsigned long coda_f2i (struct CodaFid*) ;
 int coda_fideq (struct CodaFid*,struct CodaFid*) ;
 int remove_inode_hash (struct inode*) ;

void coda_replace_fid(struct inode *inode, struct CodaFid *oldfid,
        struct CodaFid *newfid)
{
 struct coda_inode_info *cii = ITOC(inode);
 unsigned long hash = coda_f2i(newfid);

 BUG_ON(!coda_fideq(&cii->c_fid, oldfid));



 remove_inode_hash(inode);
 cii->c_fid = *newfid;
 inode->i_ino = hash;
 __insert_inode_hash(inode, hash);
}
