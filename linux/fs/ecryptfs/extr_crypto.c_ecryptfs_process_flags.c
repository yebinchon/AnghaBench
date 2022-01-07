
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct ecryptfs_crypt_stat {int file_version; int flags; } ;
struct TYPE_3__ {int file_flag; int local_flag; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 TYPE_1__* ecryptfs_flag_map ;
 int get_unaligned_be32 (char*) ;

__attribute__((used)) static void ecryptfs_process_flags(struct ecryptfs_crypt_stat *crypt_stat,
      char *page_virt, int *bytes_read)
{
 int i;
 u32 flags;

 flags = get_unaligned_be32(page_virt);
 for (i = 0; i < ARRAY_SIZE(ecryptfs_flag_map); i++)
  if (flags & ecryptfs_flag_map[i].file_flag) {
   crypt_stat->flags |= ecryptfs_flag_map[i].local_flag;
  } else
   crypt_stat->flags &= ~(ecryptfs_flag_map[i].local_flag);

 crypt_stat->file_version = ((flags >> 24) & 0xFF);
 (*bytes_read) = 4;
}
