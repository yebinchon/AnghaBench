
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct coda_inode_info {int c_fid; } ;
struct CodaFid {int dummy; } ;


 struct coda_inode_info* ITOC (struct inode*) ;
 int coda_fideq (int *,struct CodaFid*) ;

__attribute__((used)) static int coda_test_inode(struct inode *inode, void *data)
{
 struct CodaFid *fid = (struct CodaFid *)data;
 struct coda_inode_info *cii = ITOC(inode);
 return coda_fideq(&cii->c_fid, fid);
}
