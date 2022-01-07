
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct inode {int dummy; } ;


 int ECRYPTFS_FILE_SIZE_BYTES ;
 int ECRYPTFS_SIZE_AND_MARKER_BYTES ;
 int EINVAL ;
 int ecryptfs_i_size_init (int *,struct inode*) ;
 int ecryptfs_read_lower (int *,int ,int,struct inode*) ;
 int ecryptfs_validate_marker (int *) ;

int ecryptfs_read_and_validate_header_region(struct inode *inode)
{
 u8 file_size[ECRYPTFS_SIZE_AND_MARKER_BYTES];
 u8 *marker = file_size + ECRYPTFS_FILE_SIZE_BYTES;
 int rc;

 rc = ecryptfs_read_lower(file_size, 0, ECRYPTFS_SIZE_AND_MARKER_BYTES,
     inode);
 if (rc < 0)
  return rc;
 else if (rc < ECRYPTFS_SIZE_AND_MARKER_BYTES)
  return -EINVAL;
 rc = ecryptfs_validate_marker(marker);
 if (!rc)
  ecryptfs_i_size_init(file_size, inode);
 return rc;
}
