
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum btrfs_compression_type { ____Placeholder_btrfs_compression_type } btrfs_compression_type ;






 char const** btrfs_compress_types ;

const char* btrfs_compress_type2str(enum btrfs_compression_type type)
{
 switch (type) {
 case 129:
 case 131:
 case 128:
 case 130:
  return btrfs_compress_types[type];
 }

 return ((void*)0);
}
