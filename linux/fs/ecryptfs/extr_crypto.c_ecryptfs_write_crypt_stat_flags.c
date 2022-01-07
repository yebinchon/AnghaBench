
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct ecryptfs_crypt_stat {int flags; scalar_t__ file_version; } ;
struct TYPE_3__ {int local_flag; int file_flag; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 TYPE_1__* ecryptfs_flag_map ;
 int put_unaligned_be32 (int,char*) ;

void ecryptfs_write_crypt_stat_flags(char *page_virt,
         struct ecryptfs_crypt_stat *crypt_stat,
         size_t *written)
{
 u32 flags = 0;
 int i;

 for (i = 0; i < ARRAY_SIZE(ecryptfs_flag_map); i++)
  if (crypt_stat->flags & ecryptfs_flag_map[i].local_flag)
   flags |= ecryptfs_flag_map[i].file_flag;

 flags |= ((((u8)crypt_stat->file_version) << 24) & 0xFF000000);
 put_unaligned_be32(flags, page_virt);
 (*written) = 4;
}
