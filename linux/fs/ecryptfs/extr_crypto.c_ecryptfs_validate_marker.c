
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int EINVAL ;
 int KERN_DEBUG ;
 int MAGIC_ECRYPTFS_MARKER ;
 int ecryptfs_printk (int ,char*,int,...) ;
 int get_unaligned_be32 (char*) ;

__attribute__((used)) static int ecryptfs_validate_marker(char *data)
{
 u32 m_1, m_2;

 m_1 = get_unaligned_be32(data);
 m_2 = get_unaligned_be32(data + 4);
 if ((m_1 ^ MAGIC_ECRYPTFS_MARKER) == m_2)
  return 0;
 ecryptfs_printk(KERN_DEBUG, "m_1 = [0x%.8x]; m_2 = [0x%.8x]; "
   "MAGIC_ECRYPTFS_MARKER = [0x%.8x]\n", m_1, m_2,
   MAGIC_ECRYPTFS_MARKER);
 ecryptfs_printk(KERN_DEBUG, "(m_1 ^ MAGIC_ECRYPTFS_MARKER) = "
   "[0x%.8x]\n", (m_1 ^ MAGIC_ECRYPTFS_MARKER));
 return -EINVAL;
}
