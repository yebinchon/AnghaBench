
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct megasas_instance {TYPE_1__* pdev; } ;
typedef scalar_t__ dma_addr_t ;
struct TYPE_2__ {int dev; } ;


 int dev_err (int *,char*,unsigned long long,unsigned long long) ;
 scalar_t__ upper_32_bits (scalar_t__) ;

__attribute__((used)) static inline bool megasas_check_same_4gb_region
 (struct megasas_instance *instance, dma_addr_t start_addr, size_t size)
{
 dma_addr_t end_addr;

 end_addr = start_addr + size;

 if (upper_32_bits(start_addr) != upper_32_bits(end_addr)) {
  dev_err(&instance->pdev->dev,
   "Failed to get same 4GB boundary: start_addr: 0x%llx end_addr: 0x%llx\n",
   (unsigned long long)start_addr,
   (unsigned long long)end_addr);
  return 0;
 }

 return 1;
}
