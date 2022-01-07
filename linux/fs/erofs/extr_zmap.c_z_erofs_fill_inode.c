
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {TYPE_1__* i_mapping; } ;
struct erofs_inode {scalar_t__ datalayout; int flags; int z_logical_clusterbits; int * z_physical_clusterbits; scalar_t__* z_algorithmtype; scalar_t__ z_advise; } ;
struct TYPE_2__ {int * a_ops; } ;


 struct erofs_inode* EROFS_I (struct inode*) ;
 scalar_t__ EROFS_INODE_FLAT_COMPRESSION_LEGACY ;
 int EROFS_I_Z_INITED_BIT ;
 int LOG_BLOCK_SIZE ;
 int set_bit (int ,int *) ;
 int z_erofs_vle_normalaccess_aops ;

int z_erofs_fill_inode(struct inode *inode)
{
 struct erofs_inode *const vi = EROFS_I(inode);

 if (vi->datalayout == EROFS_INODE_FLAT_COMPRESSION_LEGACY) {
  vi->z_advise = 0;
  vi->z_algorithmtype[0] = 0;
  vi->z_algorithmtype[1] = 0;
  vi->z_logical_clusterbits = LOG_BLOCK_SIZE;
  vi->z_physical_clusterbits[0] = vi->z_logical_clusterbits;
  vi->z_physical_clusterbits[1] = vi->z_logical_clusterbits;
  set_bit(EROFS_I_Z_INITED_BIT, &vi->flags);
 }

 inode->i_mapping->a_ops = &z_erofs_vle_normalaccess_aops;
 return 0;
}
