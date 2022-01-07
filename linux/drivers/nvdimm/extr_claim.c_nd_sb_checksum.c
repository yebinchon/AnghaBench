
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct nd_pfn_sb {int dummy; } ;
struct nd_gen_sb {int checksum; } ;
struct btt_sb {int dummy; } ;
typedef int __le64 ;


 int BUILD_BUG_ON (int) ;
 int SZ_4K ;
 int nd_fletcher64 (struct nd_gen_sb*,int,int) ;

u64 nd_sb_checksum(struct nd_gen_sb *nd_gen_sb)
{
 u64 sum;
 __le64 sum_save;

 BUILD_BUG_ON(sizeof(struct btt_sb) != SZ_4K);
 BUILD_BUG_ON(sizeof(struct nd_pfn_sb) != SZ_4K);
 BUILD_BUG_ON(sizeof(struct nd_gen_sb) != SZ_4K);

 sum_save = nd_gen_sb->checksum;
 nd_gen_sb->checksum = 0;
 sum = nd_fletcher64(nd_gen_sb, sizeof(*nd_gen_sb), 1);
 nd_gen_sb->checksum = sum_save;
 return sum;
}
