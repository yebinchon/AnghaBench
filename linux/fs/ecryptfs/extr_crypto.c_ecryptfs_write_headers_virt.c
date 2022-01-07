
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ecryptfs_crypt_stat {int dummy; } ;
struct dentry {int dummy; } ;


 size_t ECRYPTFS_FILE_SIZE_BYTES ;
 int KERN_WARNING ;
 int ecryptfs_generate_key_packet_set (char*,struct ecryptfs_crypt_stat*,struct dentry*,size_t*,size_t) ;
 int ecryptfs_printk (int ,char*,int) ;
 int ecryptfs_write_crypt_stat_flags (char*,struct ecryptfs_crypt_stat*,size_t*) ;
 int ecryptfs_write_header_metadata (char*,struct ecryptfs_crypt_stat*,size_t*) ;
 int write_ecryptfs_marker (char*,size_t*) ;

__attribute__((used)) static int ecryptfs_write_headers_virt(char *page_virt, size_t max,
           size_t *size,
           struct ecryptfs_crypt_stat *crypt_stat,
           struct dentry *ecryptfs_dentry)
{
 int rc;
 size_t written;
 size_t offset;

 offset = ECRYPTFS_FILE_SIZE_BYTES;
 write_ecryptfs_marker((page_virt + offset), &written);
 offset += written;
 ecryptfs_write_crypt_stat_flags((page_virt + offset), crypt_stat,
     &written);
 offset += written;
 ecryptfs_write_header_metadata((page_virt + offset), crypt_stat,
           &written);
 offset += written;
 rc = ecryptfs_generate_key_packet_set((page_virt + offset), crypt_stat,
           ecryptfs_dentry, &written,
           max - offset);
 if (rc)
  ecryptfs_printk(KERN_WARNING, "Error generating key packet "
    "set; rc = [%d]\n", rc);
 if (size) {
  offset += written;
  *size = offset;
 }
 return rc;
}
