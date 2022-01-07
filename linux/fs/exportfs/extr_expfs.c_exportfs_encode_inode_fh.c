
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {TYPE_1__* i_sb; } ;
struct fid {int raw; } ;
struct export_operations {int (* encode_fh ) (struct inode*,int ,int*,struct inode*) ;} ;
struct TYPE_2__ {struct export_operations* s_export_op; } ;


 int export_encode_fh (struct inode*,struct fid*,int*,struct inode*) ;
 int stub1 (struct inode*,int ,int*,struct inode*) ;

int exportfs_encode_inode_fh(struct inode *inode, struct fid *fid,
        int *max_len, struct inode *parent)
{
 const struct export_operations *nop = inode->i_sb->s_export_op;

 if (nop && nop->encode_fh)
  return nop->encode_fh(inode, fid->raw, max_len, parent);

 return export_encode_fh(inode, fid, max_len, parent);
}
