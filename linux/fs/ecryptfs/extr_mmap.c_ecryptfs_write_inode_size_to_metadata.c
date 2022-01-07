
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct ecryptfs_crypt_stat {int flags; } ;
struct TYPE_2__ {struct ecryptfs_crypt_stat crypt_stat; } ;


 int BUG_ON (int) ;
 int ECRYPTFS_ENCRYPTED ;
 int ECRYPTFS_METADATA_IN_XATTR ;
 TYPE_1__* ecryptfs_inode_to_private (struct inode*) ;
 int ecryptfs_write_inode_size_to_header (struct inode*) ;
 int ecryptfs_write_inode_size_to_xattr (struct inode*) ;

int ecryptfs_write_inode_size_to_metadata(struct inode *ecryptfs_inode)
{
 struct ecryptfs_crypt_stat *crypt_stat;

 crypt_stat = &ecryptfs_inode_to_private(ecryptfs_inode)->crypt_stat;
 BUG_ON(!(crypt_stat->flags & ECRYPTFS_ENCRYPTED));
 if (crypt_stat->flags & ECRYPTFS_METADATA_IN_XATTR)
  return ecryptfs_write_inode_size_to_xattr(ecryptfs_inode);
 else
  return ecryptfs_write_inode_size_to_header(ecryptfs_inode);
}
