
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct z_erofs_maprecorder {unsigned long lcn; struct inode* inode; } ;
struct z_erofs_map_header {int dummy; } ;
struct inode {int i_size; } ;
struct erofs_inode {unsigned int z_logical_clusterbits; int z_advise; scalar_t__ xattr_isize; scalar_t__ inode_isize; int nid; } ;
typedef int erofs_off_t ;


 int ALIGN (scalar_t__,int) ;
 unsigned int DIV_ROUND_UP (int ,int ) ;
 int EINVAL ;
 int EOPNOTSUPP ;
 int EROFS_BLKSIZ ;
 struct erofs_inode* EROFS_I (struct inode* const) ;
 int EROFS_I_SB (struct inode* const) ;
 int Z_EROFS_ADVISE_COMPACTED_2B ;
 int erofs_blknr (int) ;
 int erofs_blkoff (int) ;
 scalar_t__ iloc (int ,int ) ;
 unsigned int rounddown (unsigned int const,int) ;
 int unpack_compacted_index (struct z_erofs_maprecorder*,unsigned int,int ) ;
 int z_erofs_reload_indexes (struct z_erofs_maprecorder*,int ) ;

__attribute__((used)) static int compacted_load_cluster_from_disk(struct z_erofs_maprecorder *m,
         unsigned long lcn)
{
 struct inode *const inode = m->inode;
 struct erofs_inode *const vi = EROFS_I(inode);
 const unsigned int lclusterbits = vi->z_logical_clusterbits;
 const erofs_off_t ebase = ALIGN(iloc(EROFS_I_SB(inode), vi->nid) +
     vi->inode_isize + vi->xattr_isize, 8) +
  sizeof(struct z_erofs_map_header);
 const unsigned int totalidx = DIV_ROUND_UP(inode->i_size, EROFS_BLKSIZ);
 unsigned int compacted_4b_initial, compacted_2b;
 unsigned int amortizedshift;
 erofs_off_t pos;
 int err;

 if (lclusterbits != 12)
  return -EOPNOTSUPP;

 if (lcn >= totalidx)
  return -EINVAL;

 m->lcn = lcn;

 compacted_4b_initial = (32 - ebase % 32) / 4;
 if (compacted_4b_initial == 32 / 4)
  compacted_4b_initial = 0;

 if (vi->z_advise & Z_EROFS_ADVISE_COMPACTED_2B)
  compacted_2b = rounddown(totalidx - compacted_4b_initial, 16);
 else
  compacted_2b = 0;

 pos = ebase;
 if (lcn < compacted_4b_initial) {
  amortizedshift = 2;
  goto out;
 }
 pos += compacted_4b_initial * 4;
 lcn -= compacted_4b_initial;

 if (lcn < compacted_2b) {
  amortizedshift = 1;
  goto out;
 }
 pos += compacted_2b * 2;
 lcn -= compacted_2b;
 amortizedshift = 2;
out:
 pos += lcn * (1 << amortizedshift);
 err = z_erofs_reload_indexes(m, erofs_blknr(pos));
 if (err)
  return err;
 return unpack_compacted_index(m, amortizedshift, erofs_blkoff(pos));
}
