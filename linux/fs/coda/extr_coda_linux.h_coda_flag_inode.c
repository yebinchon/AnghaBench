
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct coda_inode_info {int c_flags; int c_lock; } ;


 struct coda_inode_info* ITOC (struct inode*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static __inline__ void coda_flag_inode(struct inode *inode, int flag)
{
 struct coda_inode_info *cii = ITOC(inode);

 spin_lock(&cii->c_lock);
 cii->c_flags |= flag;
 spin_unlock(&cii->c_lock);
}
