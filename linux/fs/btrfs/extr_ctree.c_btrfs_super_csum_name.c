
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u16 ;
struct TYPE_2__ {char const* name; } ;


 TYPE_1__* btrfs_csums ;

const char *btrfs_super_csum_name(u16 csum_type)
{

 return btrfs_csums[csum_type].name;
}
