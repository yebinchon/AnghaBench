
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct CodaFid {int dummy; } ;
struct TYPE_8__ {struct CodaFid NewFid; struct CodaFid OldFid; } ;
struct TYPE_7__ {struct CodaFid CodaFid; } ;
struct TYPE_6__ {struct CodaFid CodaFid; } ;
struct TYPE_5__ {struct CodaFid CodaFid; } ;
union outputArgs {TYPE_4__ coda_replace; TYPE_3__ coda_purgefid; TYPE_2__ coda_zapfile; TYPE_1__ coda_zapdir; } ;
struct venus_comm {int vc_mutex; struct super_block* vc_sb; } ;
struct super_block {int s_root; } ;
struct inode {int dummy; } ;
struct coda_zapfile_out {int dummy; } ;
struct coda_zapdir_out {int dummy; } ;
struct coda_replace_out {int dummy; } ;
struct coda_purgeuser_out {int dummy; } ;
struct coda_purgefid_out {int dummy; } ;
 int C_FLUSH ;
 int C_PURGE ;
 int C_VATTR ;
 int EINVAL ;
 int coda_cache_clear_all (struct super_block*) ;
 struct inode* coda_fid_to_inode (struct CodaFid*,struct super_block*) ;
 int coda_flag_inode (struct inode*,int ) ;
 int coda_flag_inode_children (struct inode*,int ) ;
 int coda_replace_fid (struct inode*,struct CodaFid*,struct CodaFid*) ;
 struct inode* d_inode (int ) ;
 int d_prune_aliases (struct inode*) ;
 int d_really_is_positive (int ) ;
 int iput (struct inode*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int shrink_dcache_sb (struct super_block*) ;

int coda_downcall(struct venus_comm *vcp, int opcode, union outputArgs *out,
    size_t nbytes)
{
 struct inode *inode = ((void*)0);
 struct CodaFid *fid = ((void*)0), *newfid;
 struct super_block *sb;





 switch (opcode) {
 case 131:
  if (nbytes < sizeof(struct coda_purgeuser_out))
   return -EINVAL;
  break;

 case 129:
  if (nbytes < sizeof(struct coda_zapdir_out))
   return -EINVAL;
  break;

 case 128:
  if (nbytes < sizeof(struct coda_zapfile_out))
   return -EINVAL;
  break;

 case 132:
  if (nbytes < sizeof(struct coda_purgefid_out))
   return -EINVAL;
  break;

 case 130:
  if (nbytes < sizeof(struct coda_replace_out))
   return -EINVAL;
  break;
 }


 mutex_lock(&vcp->vc_mutex);
 sb = vcp->vc_sb;
 if (!sb || !sb->s_root)
  goto unlock_out;

 switch (opcode) {
 case 133:
  coda_cache_clear_all(sb);
  shrink_dcache_sb(sb);
  if (d_really_is_positive(sb->s_root))
   coda_flag_inode(d_inode(sb->s_root), C_FLUSH);
  break;

 case 131:
  coda_cache_clear_all(sb);
  break;

 case 129:
  fid = &out->coda_zapdir.CodaFid;
  break;

 case 128:
  fid = &out->coda_zapfile.CodaFid;
  break;

 case 132:
  fid = &out->coda_purgefid.CodaFid;
  break;

 case 130:
  fid = &out->coda_replace.OldFid;
  break;
 }
 if (fid)
  inode = coda_fid_to_inode(fid, sb);

unlock_out:
 mutex_unlock(&vcp->vc_mutex);

 if (!inode)
  return 0;

 switch (opcode) {
 case 129:
  coda_flag_inode_children(inode, C_PURGE);
  coda_flag_inode(inode, C_VATTR);
  break;

 case 128:
  coda_flag_inode(inode, C_VATTR);
  break;

 case 132:
  coda_flag_inode_children(inode, C_PURGE);


  coda_flag_inode(inode, C_PURGE);
  d_prune_aliases(inode);
  break;

 case 130:
  newfid = &out->coda_replace.NewFid;
  coda_replace_fid(inode, fid, newfid);
  break;
 }
 iput(inode);
 return 0;
}
