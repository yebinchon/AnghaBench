
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int MAGIC_ECRYPTFS_MARKER ;
 int MAGIC_ECRYPTFS_MARKER_SIZE_BYTES ;
 int get_random_bytes (int*,int) ;
 int put_unaligned_be32 (int,char*) ;

__attribute__((used)) static void write_ecryptfs_marker(char *page_virt, size_t *written)
{
 u32 m_1, m_2;

 get_random_bytes(&m_1, (MAGIC_ECRYPTFS_MARKER_SIZE_BYTES / 2));
 m_2 = (m_1 ^ MAGIC_ECRYPTFS_MARKER);
 put_unaligned_be32(m_1, page_virt);
 page_virt += (MAGIC_ECRYPTFS_MARKER_SIZE_BYTES / 2);
 put_unaligned_be32(m_2, page_virt);
 (*written) = MAGIC_ECRYPTFS_MARKER_SIZE_BYTES;
}
