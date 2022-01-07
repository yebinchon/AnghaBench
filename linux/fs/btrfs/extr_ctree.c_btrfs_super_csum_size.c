
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u16 ;
struct btrfs_super_block {int dummy; } ;
struct TYPE_2__ {int size; } ;


 TYPE_1__* btrfs_csums ;
 size_t btrfs_super_csum_type (struct btrfs_super_block const*) ;

int btrfs_super_csum_size(const struct btrfs_super_block *s)
{
 u16 t = btrfs_super_csum_type(s);



 return btrfs_csums[t].size;
}
