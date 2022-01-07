
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct erofs_super_block {int feature_incompat; } ;
struct TYPE_2__ {unsigned int feature_incompat; } ;


 unsigned int const EROFS_ALL_FEATURE_INCOMPAT ;
 TYPE_1__* EROFS_SB (struct super_block*) ;
 int erofs_err (struct super_block*,char*,unsigned int const) ;
 unsigned int le32_to_cpu (int ) ;

__attribute__((used)) static bool check_layout_compatibility(struct super_block *sb,
           struct erofs_super_block *dsb)
{
 const unsigned int feature = le32_to_cpu(dsb->feature_incompat);

 EROFS_SB(sb)->feature_incompat = feature;


 if (feature & (~EROFS_ALL_FEATURE_INCOMPAT)) {
  erofs_err(sb,
     "unidentified incompatible feature %x, please upgrade kernel version",
      feature & ~EROFS_ALL_FEATURE_INCOMPAT);
  return 0;
 }
 return 1;
}
