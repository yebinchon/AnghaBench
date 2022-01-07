
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct us_data {int dummy; } ;


 int MS_LB_BOOT_BLOCK ;
 int ms_lib_set_logicalblockmark (struct us_data*,int ,int ) ;

__attribute__((used)) static int ms_lib_set_bootblockmark(struct us_data *us, u16 phyblk)
{
 return ms_lib_set_logicalblockmark(us, phyblk, MS_LB_BOOT_BLOCK);
}
