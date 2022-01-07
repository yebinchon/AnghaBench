
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct CodaFid {int dummy; } ;
struct coda_inode_info {struct CodaFid c_fid; } ;


 struct coda_inode_info* ITOC (struct inode*) ;

__attribute__((used)) static int coda_set_inode(struct inode *inode, void *data)
{
 struct CodaFid *fid = (struct CodaFid *)data;
 struct coda_inode_info *cii = ITOC(inode);
 cii->c_fid = *fid;
 return 0;
}
