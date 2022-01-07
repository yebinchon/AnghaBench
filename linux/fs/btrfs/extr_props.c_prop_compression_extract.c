
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct TYPE_2__ {int prop_compress; } ;





 TYPE_1__* BTRFS_I (struct inode*) ;
 char const* btrfs_compress_type2str (int) ;

__attribute__((used)) static const char *prop_compression_extract(struct inode *inode)
{
 switch (BTRFS_I(inode)->prop_compress) {
 case 129:
 case 130:
 case 128:
  return btrfs_compress_type2str(BTRFS_I(inode)->prop_compress);
 default:
  break;
 }

 return ((void*)0);
}
