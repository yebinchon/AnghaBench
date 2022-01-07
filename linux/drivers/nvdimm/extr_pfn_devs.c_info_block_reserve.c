
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int ALIGN (int ,int ) ;
 int PAGE_SIZE ;
 int SZ_8K ;

__attribute__((used)) static u32 info_block_reserve(void)
{
 return ALIGN(SZ_8K, PAGE_SIZE);
}
