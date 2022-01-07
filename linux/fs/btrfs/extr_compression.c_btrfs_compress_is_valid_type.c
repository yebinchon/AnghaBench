
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARRAY_SIZE (int *) ;
 int * btrfs_compress_types ;
 size_t strlen (int ) ;
 int strncmp (int ,char const*,size_t) ;

bool btrfs_compress_is_valid_type(const char *str, size_t len)
{
 int i;

 for (i = 1; i < ARRAY_SIZE(btrfs_compress_types); i++) {
  size_t comp_len = strlen(btrfs_compress_types[i]);

  if (len < comp_len)
   continue;

  if (!strncmp(btrfs_compress_types[i], str, comp_len))
   return 1;
 }
 return 0;
}
