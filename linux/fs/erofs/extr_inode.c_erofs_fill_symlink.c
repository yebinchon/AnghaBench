
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {unsigned int i_size; char* i_link; int * i_op; int i_sb; } ;
struct erofs_inode {scalar_t__ datalayout; int nid; scalar_t__ xattr_isize; scalar_t__ inode_isize; } ;


 int DBG_BUGON (int) ;
 int EFSCORRUPTED ;
 int ENOMEM ;
 struct erofs_inode* EROFS_I (struct inode*) ;
 scalar_t__ EROFS_INODE_FLAT_INLINE ;
 int GFP_KERNEL ;
 unsigned int PAGE_SIZE ;
 int erofs_err (int ,char*,int ) ;
 int erofs_fast_symlink_iops ;
 int erofs_symlink_iops ;
 int kfree (char*) ;
 char* kmalloc (int,int ) ;
 int memcpy (char*,void*,unsigned int) ;

__attribute__((used)) static int erofs_fill_symlink(struct inode *inode, void *data,
         unsigned int m_pofs)
{
 struct erofs_inode *vi = EROFS_I(inode);
 char *lnk;


 if (vi->datalayout != EROFS_INODE_FLAT_INLINE ||
     inode->i_size >= PAGE_SIZE) {
  inode->i_op = &erofs_symlink_iops;
  return 0;
 }

 lnk = kmalloc(inode->i_size + 1, GFP_KERNEL);
 if (!lnk)
  return -ENOMEM;

 m_pofs += vi->inode_isize + vi->xattr_isize;

 if (m_pofs + inode->i_size > PAGE_SIZE) {
  kfree(lnk);
  erofs_err(inode->i_sb,
     "inline data cross block boundary @ nid %llu",
     vi->nid);
  DBG_BUGON(1);
  return -EFSCORRUPTED;
 }

 memcpy(lnk, data + m_pofs, inode->i_size);
 lnk[inode->i_size] = '\0';

 inode->i_link = lnk;
 inode->i_op = &erofs_fast_symlink_iops;
 return 0;
}
