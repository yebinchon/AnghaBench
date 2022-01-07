
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct super_block {int dummy; } ;
struct TYPE_2__ {unsigned int s_log2sharesize; } ;


 TYPE_1__* ADFS_SB (struct super_block*) ;
 int adfs_map_lookup (struct super_block*,int,unsigned int) ;

__attribute__((used)) static inline int __adfs_block_map(struct super_block *sb, u32 indaddr,
       unsigned int block)
{
 if (indaddr & 255) {
  unsigned int off;

  off = (indaddr & 255) - 1;
  block += off << ADFS_SB(sb)->s_log2sharesize;
 }

 return adfs_map_lookup(sb, indaddr >> 8, block);
}
