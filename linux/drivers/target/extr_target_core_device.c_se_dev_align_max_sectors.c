
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 scalar_t__ PAGE_SIZE ;
 scalar_t__ max (unsigned long,scalar_t__) ;
 int pr_info (char*,scalar_t__,scalar_t__) ;
 scalar_t__ rounddown (scalar_t__,scalar_t__) ;

__attribute__((used)) static u32 se_dev_align_max_sectors(u32 max_sectors, u32 block_size)
{
 u32 aligned_max_sectors;
 u32 alignment;




 alignment = max(1ul, PAGE_SIZE / block_size);
 aligned_max_sectors = rounddown(max_sectors, alignment);

 if (max_sectors != aligned_max_sectors)
  pr_info("Rounding down aligned max_sectors from %u to %u\n",
   max_sectors, aligned_max_sectors);

 return aligned_max_sectors;
}
